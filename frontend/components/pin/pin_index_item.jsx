import React from "react";
import PinIndexItemButtons from "./pin_index_item_buttons";

import { Link, withRouter } from "react-router-dom";
// import LinesEllipsis from "react-lines-ellipsis";



const PinIndexItem = ({ user, page, pin, openEditPin, openNewBoardPin }) => {
  const editPinLink = (page === 'home') ? (
    null
  ) : (
    <a
      className="pin-index-item edit-pin-link"
      onClick={openEditPin}
    >
      <i className="fas fa-pencil-alt edit-pin-icon"></i>
    </a>
  );
  const pinUrl = pin.url;
  const shortPinUrl = pinUrl.slice(12, 22) + "...";

  return (
    <div className="pin-index-item container">
      <div className="pin-index-item masonry-item">
        <Link
          to={`/pin/${pin.id}`}
          className="pin-index-item pin-show-link"

        >
          <div className="pin-index-item overlay"></div>
          <img src={pin.photo} className="pin-index-item masonry-image"/>
        </Link>
        <div className="pin-index-item links">
          <div className="pin-index-item edit-pin-link-container">
            {editPinLink}
          </div>
          <div className="save-board-pin-link-container">
            <a
              className="pin-index-item save-board-pin-link"
              onClick={openNewBoardPin}
            >
              <div className="pin-index-item save-board-pin-text">
                Save
              </div>
            </a>
          </div>
          <div className="pin-index-item pin-link-container">
            <a href={`${pinUrl}`} target="_blank" className="pin-index-item pin-link">
              <i className="fas fa-external-link-alt pin-link-icon"></i>
              <div className="pin-index-item pin-link-text">
                {shortPinUrl}
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>
  );
};

export default PinIndexItem;