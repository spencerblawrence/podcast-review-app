import React from "react";
import { Link } from "react-router";

const PodcastIndexTile = props => {
  return (
    <Link to={`/podcasts/${props.id}`}>
      <div className="index-tile-wrapper small-6 columns">
        <div className="podcast-index-tile">
          <h2 className="title">{props.podcast.name}</h2>
          <p className="index-tile-text">{props.podcast.description}</p>
          <br />
        </div>
      </div>
    </Link>
  );
};

export default PodcastIndexTile;
