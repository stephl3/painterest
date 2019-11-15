import React from "react";

import { Link, withRouter } from "react-router-dom";
// import LinesEllipsis from "react-lines-ellipsis";



const PinIndexItem = ({ pin }) => {
  
  return (
    <div className="pin-index item-container">
      <div className="pin-index masonry-item" id="item">
        <img src={pin.photo} className="pin-index masonry-content" id="image"/>
      </div>
    </div>
  );
};

export default PinIndexItem;