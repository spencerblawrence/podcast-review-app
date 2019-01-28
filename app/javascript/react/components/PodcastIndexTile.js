import React from "react";
import { Link } from "react-router";

const PodcastIndexTile = props => {
  return (
    <div>
      <h2>{props.podcast.name}</h2>
      <p>{props.podcast.description}</p>
      <Link to={`/podcasts/${props.id}`}>Click Here to Learn More!</Link>
      <br />
      <br />
    </div>
  );
};

export default PodcastIndexTile;
