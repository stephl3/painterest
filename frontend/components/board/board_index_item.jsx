import React from "react";

import { Link, withRouter } from "react-router-dom";
// import LinesEllipsis from "react-lines-ellipsis";



const BoardIndexItem = ({ board }) => {

  return (
    <div className="board-index-item-container">
      <div className="board-index-item" id="item">
        {board.title}
        {board.description}
        {/* <img src={board.photo} className="board-index masonry-content" id="image" /> */}
      </div>
    </div>
  );
};

export default BoardIndexItem;