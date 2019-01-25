import React from 'react';

const PodcastTile = props => {
  return(
    <div>
      <h2>{props.podcast.name}</h2>
      <p>{props.podcast.description}</p>
    </div>
  )
}

export default PodcastTile;
