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
      reviews: []
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
          reviews: podcast["podcast"]["reviews"]
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

    return (
      <div className="row column">
        <h2>{this.state.name}</h2>
        <h3>{this.state.description}</h3>
        <p>{this.state.publisher}</p>
        <a href={this.state.link}>Visit Website</a>
        <hr />
        <p>Add a Review!</p>
        <ReviewFormContainer
          addNewReview={this.addNewReview}
          podcastId={this.props.params.id}
        />
        <hr />
        {reviews}
      </div>
    );
  }
}

export default PodcastShowContainer;
