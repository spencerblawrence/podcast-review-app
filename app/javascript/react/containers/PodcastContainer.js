import React, { Component } from "react";
import PodcastIndexTile from "../components/PodcastIndexTile";
import { Link } from "react-router";

class PodcastContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      podcasts: []
    };
  }

  componentDidMount() {
    console.log("componentDidMount");
    fetch("/api/v1/podcasts.json")
      .then(response => {
        let podcasts = response.json();
        return podcasts;
      })
      .then(podcasts => {
        this.setState({ podcasts: podcasts["podcasts"] });
      });
  }

  render() {
    let podcasts = this.state.podcasts.map(podcast => {
      return (
        <PodcastIndexTile key={podcast.id} id={podcast.id} podcast={podcast} />
      );
    });

    return (
      <div>
        <p>I am the PodcastContainer</p>
        {podcasts}
        <div />
      </div>
    );
  }
}

export default PodcastContainer;
