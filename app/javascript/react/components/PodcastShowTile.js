import React from "react";
import { Link } from "react-router";

const PodcastShowTile = props => {
  return (
    <div className="podcast-show-tile">
      <h2>{props.podcast.name}</h2>
      <p>{props.podcast.description}</p>
      <p>{props.podcast.publisher}</p>
      <p>{props.podcast.link}</p>
      <br />
      <br />
    </div>
  );
};

export default PodcastShowTile;
