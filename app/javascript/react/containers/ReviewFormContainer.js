import React, { Component } from "react";

class ReviewFormContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      name: "",
      description: "",
      publisher: ""
    };
  }

  handleChange(event) {
    this.setState({ [event.target.name]: event.target.value });
  }
  render() {
    return (
      <div>
        <p>I am the Podcast Form Container</p>
      </div>
    );
  }
}

export default ReviewFormContainer;
