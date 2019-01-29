import React from 'react';
import { Link } from 'react-router'

const ReviewTile = (props) => {
  debugger
  return(
    <div className="review-tile">
      <p>Rating: {props.review.rating}</p>
      <p>Review: {props.review.body}</p>
    </div>
  )
}

export default ReviewTile;
