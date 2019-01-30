import React, { Component } from "react";
import PodcastIndexTile from "../components/PodcastIndexTile";
import { Link } from "react-router";

class PodcastsIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      podcasts: []
    };
  }

  componentDidMount() {
    fetch("/api/v1/podcasts")
      .then(response => {
        if (response.ok) {
          return response;
        } else {
          let errorMessage = `${response.status} (${response.statusText})`,
            error = new Error(errorMessage);
          throw error;
        }
      })
      .then(response => {
        let podcasts = response.json();
        return podcasts;
      })
      .then(podcasts => {
        this.setState({ podcasts: podcasts["podcasts"] });
      })
      .catch(error => console.log(`Error in fetch: ${error.message}`));
  }

  render() {
    let podcasts = this.state.podcasts.map(podcast => {
      return (
        <PodcastIndexTile key={podcast.id} id={podcast.id} podcast={podcast} />
      );
    });

    return (
      <div className="row">
        {podcasts}
      </div>
    )
  }
}

export default PodcastsIndexContainer;
