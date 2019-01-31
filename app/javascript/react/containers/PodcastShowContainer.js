import React, { Component } from "react";
import { Link } from "react-router";
import ReviewTile from "../components/ReviewTile";
import ReviewFormContainer from "./ReviewFormContainer";

class PodcastShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      name: "",
      description: "",
      publisher: "",
      link: "",
      image: "",
      reviews: [],
      user_id: null
    };
    this.addNewReview = this.addNewReview.bind(this);
  }

  componentDidMount() {
    fetch(`/api/v1/podcasts/${this.props.params.id}`)
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
      this.setState({
        name: podcast["podcast"]["name"],
        description: podcast["podcast"]["description"],
        publisher: podcast["podcast"]["publisher"],
        link: podcast["podcast"]["link"],
        image: podcast["podcast"]["image"],
        reviews: podcast["podcast"]["reviews"],
        user_id: podcast["podcast"]["user_id"]
      });
    })
    .catch(error => console.log(`Error in fetch: ${error.message}`));
  }

  addNewReview(formPayload) {
    fetch("/api/v1/reviews", {
      credentials: "same-origin",
      method: "POST",
      body: JSON.stringify(formPayload),
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json"
      }
    })
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
      .then(newReview => {
        let currentReviews = this.state.reviews;
        this.setState({ reviews: currentReviews.concat(newReview.review) });
      })
      .catch(error => console.log(`Error in fetch: ${error.message}`));
  }

  render() {
    let reviews = this.state.reviews.map(review => {
      return <ReviewTile key={review.id} review={review} />;
    });

    let reviewFormContainer = null
    if (this.state.user_id !== null) {
      reviewFormContainer =
        <ReviewFormContainer
          addNewReview={this.addNewReview}
          podcastId={this.props.params.id}
          />
      }

    return (
      <div className="podcast-show-container">
        <div className="podcast-show-tile">
          <img className="podcast-show-image" src={this.state.image} />
          <h2 className="podcast-show-title">{this.state.name}</h2>
          <h3 className="podcast-show-text">{this.state.description}</h3>
          <p className="podcast-show-text">Publisher: {this.state.publisher}</p>
          <a id="podcast-show-link" href={this.state.link}>Visit Website</a>
        </div>
        <div className="podcast-review-form-container">
          {reviewFormContainer}
        </div>
        <div>
          {reviews}
        </div>
        <div className="button-group admin-buttons">
          <a href={`/podcasts/${this.props.params.id}/edit`}>Edit Podcast</a>
        </div>
      </div>
    );
  }
}

export default PodcastShowContainer;
