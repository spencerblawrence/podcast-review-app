this.setState({ reviews: [...this.state.reviews, newReview] });
// This is in ReviewContainer.js - I think it adds newReview to the existing state.reviews?

onChange={props.handleChange}
// in BodyField.js - where does the onChange get called?
