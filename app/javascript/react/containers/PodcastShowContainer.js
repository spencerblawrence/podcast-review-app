import React, { Component } from "react";
import { Link } from "react-router";

class PodcastShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      podcast: {}
    };
  }

  componentDidMount() {
    let podcastId = this.props.params.id;
    fetch(`/api/v1/podcasts/${podcastId}`)
      .then(response => {
        if (response.ok) {
          return response;
        } else {
          let errorMessage = `${response.status} (${response.statusText})`,
            error = new Error(errorMessage);
          throw error;
        }
      })
      .then(response => response.json())
      .then(podcast => {
        this.setState({ podcast: podcast["podcasts"][0] });
      })
      .catch(error => console.log(`Error in fetch: ${error.message}`));
  }

  render() {
    return (
      <div>
        <h2>{this.state.podcast.name}</h2>
        <h3>{this.state.podcast.description}</h3>
        <p>{this.state.podcast.publisher}</p>
        <a href={this.state.podcast.link}>Visit Website</a>
      </div>
    );
  }
}

export default PodcastShowContainer;
