import React, { Component } from "react";
import PodcastShowTile from "../components/PodcastShowTile";
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
        <p>I am the PodcastShowContainer</p>
        <p>{this.state.podcast.name}</p>
        <p>{this.state.podcast.description}</p>
        <p>{this.state.podcast.publisher}</p>
        <p>{this.state.podcast.link}</p>
      </div>
    );
  }
}

export default PodcastShowContainer;
