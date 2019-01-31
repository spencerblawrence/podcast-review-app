import React, { Component } from "react";
import RatingField from "../components/RatingField";
import BodyField from "../components/BodyField";

class ReviewFormContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      rating: "",
      body: ""
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleChange = this.handleChange.bind(this);
    this.handleClear = this.handleClear.bind(this);
  }

  handleSubmit(event) {
    event.preventDefault();
    let formPayload = {
      rating: this.state.rating,
      body: this.state.body,
      podcast_id: this.props.podcastId
    };
    this.props.addNewReview(formPayload);
    this.handleClear();
  }

  handleClear() {
    this.setState({
      rating: "",
      body: ""
    });
  }

  handleChange(event) {
    this.setState({ [event.target.name]: event.target.value });
  }

  render() {
    return (
      <form className="new-review-form callout" onSubmit={this.handleSubmit}>
        <RatingField
          content={this.state.rating}
          label="Rating (1-5)"
          name="rating"
          handleChange={this.handleChange}
        />
        <BodyField
          content={this.state.body}
          label="Review Body"
          name="body"
          handleChange={this.handleChange}
        />

        <div className="button-group">
          <button className="button radius" onClick={this.handleClear}>
            Clear
          </button>
          <input className="button radius" type="submit" value="Submit" />
        </div>
      </form>
    );
  }
}

export default ReviewFormContainer;
