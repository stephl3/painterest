import React from "react";

import { Link, withRouter } from "react-router-dom";
// import LinesEllipsis from "react-lines-ellipsis";



const BoardIndexItem = ({ board }) => {

  return (
    <div className="board-index-item container">
      <div className="board-index-item">
        <div className="board-index-item pins-container">
          <div className="board-index-item pins"></div>
        </div>
        <div className="board-index-item info">
          <div className="board-index-item info-details">
            <div className="board-index-item title">
              {board.title}
            </div>
            <div className="board-index-item additional">
              <div className="board-index-item visibility">
                <i class="fas fa-lock"></i>
              </div>
              <div className="board-index-item pin-count">
                {}
              </div>
            </div>
          </div>
          <div className="board-index-item edit-button-container">
            <button>
              <i class="fas fa-pencil-alt"></i>
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};

export default BoardIndexItem;