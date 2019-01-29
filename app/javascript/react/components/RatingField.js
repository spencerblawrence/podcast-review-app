import React from "react";

const RatingField = props => {
  return (
    <label>
      {props.label}
      <input
        name={props.name}
        type="text"
        pattern="[0-9]*"
        value={props.content}
        onChange={props.handleChange}
      />
    </label>
  );
};

export default RatingField;
