import React from "react";

const BodyField = props => {
  return (
    <label>
      {props.label}
      <textarea
        name={props.name}
        type="text"
        value={props.content}
        onChange={props.handleChange}
      />
    </label>
  );
};

export default BodyField;
