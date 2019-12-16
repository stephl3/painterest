import React from "react";

import { Link, withRouter } from "react-router-dom";
// import LinesEllipsis from "react-lines-ellipsis";



const BoardIndexItem = ({ board, pins, user }) => {
  const numPins = board.pinIds.length

  return (
    <div className="board-index-item container">
      <div className="board-index-item inner-container">
        <div className="board-index-item hover-overlay"></div>
        <Link
          to={`/${user.username}/${board.title}`}
          className="board-index-item link"
        >
          <div className="board-index-item content">
            <div>
              <div className="board-index-item pins-container">
                <div className="board-index-item pins">
                  <div className="board-index-item pin" id="a"></div>
                  <div className="board-index-item pin" id="b"></div>
                  <div className="board-index-item pin" id="c"></div>
                  <div className="board-index-item pin" id="d"></div>
                  <div className="board-index-item pin" id="e"></div>
                  <div className="board-index-item pin" id="f"></div>
                </div>
              </div>
              <div className="board-index-item info">
                <div className="board-index-item info-details">
                  <div className="board-index-item title">
                    {board.title}
                  </div>
                  <div className="board-index-item additional">
                    <div className="board-index-item visibility">
                      <i className="fas fa-lock board-index-item" id="lock-icon"></i>
                    </div>
                    <div className="board-index-item pin-count">
                      {numPins} Pins
                    </div>
                  </div>
                </div>
                <button className="board-index-item edit-button">
                  <i className="fas fa-pencil-alt board-index-item" id="edit-icon"></i>
                </button>
              </div>
            </div>
          </div>
        </Link>
      </div>
    </div>
  );
};

export default BoardIndexItem;