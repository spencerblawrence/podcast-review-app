import React, { Component } from "react";
import RatingField from "../components/RatingField";
import BodyField from "../components/BodyField";

class ReviewFormContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      rating: null,
      reviewBody: ""
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleChange = this.handleChange.bind(this);
    this.handleClear = this.handleClear.bind(this);
  }

  handleSubmit(event) {
    event.preventDefault();
    let formPayload = {
      title: this.state.rating,
      body: this.state.reviewBody
    };
    this.props.addNewReview(formPayload);
    this.handleClear();
  }

  handleClear() {
    this.setState({
      rating: null,
      reviewBody: ""
    });
  }

  handleChange(event) {
    this.setState({ [event.target.name]: event.target.value });
  }

  render() {
    return (
      <form className="new-article-form callout" onSubmit={this.handleSubmit}>
        <RatingField
          content={this.state.rating}
          label="Rating"
          name="rating"
          handleChange={this.handleChange}
        />
        <BodyField
          content={this.state.articleBody}
          label="Review Body"
          name="review-body"
          handleChange={this.handleChange}
        />

        <div className="button-group">
          <button className="button" onClick={this.handleClear}>
            Clear
          </button>
          <input className="button" type="submit" value="Submit" />
        </div>
      </form>
    );
  }
}

export default ReviewFormContainer;
