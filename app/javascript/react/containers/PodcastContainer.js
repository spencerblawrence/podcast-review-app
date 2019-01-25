import React, { Component } from 'react';
import PodcastTile from '../components/PodcastTile';


class PodcastContainer extends Component {
  constructor(props){
    super(props)
    this.state = {
      podcasts: []
    }

  }

  componentDidMount(){
    console.log("componentDidMount")
    fetch('/api/v1/podcasts.json')
    .then(response => {
      let podcasts = response.json()
      return podcasts
    }).then(podcasts => {
      this.setState({ podcasts: podcasts["podcasts"]})
    })
  }

  render() {
    let podcasts = this.state.podcasts.map(podcast => {
      return(
        <PodcastTile
          key={podcast.id}
          podcast={podcast}
          />
      )
    })

    return(
      <div>
        <p>I am the PodcastContainer</p>
        {podcasts}
      </div>
    )
  }
}

export default PodcastContainer;
