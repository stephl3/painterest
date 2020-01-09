import React from "react";


const PinIndexItemButtons = ({ user, page, pin, openEditPin, openNewBoardPin }) => {
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
  const abbrvPinUrl = pinUrl.slice(12, 22) + "...";

  return (
    <div className="pin-index-item buttons-container">
      <div className="pin-index-item buttons upper">
        <div>
          {editPinLink}
        </div>
        <a className="pin-index-item save-board-pin-link">
          <div className="pin-index-item save-board-pin-text">
            Save
          </div>
        </a>
      </div>
      <div className="pin-index-item buttons lower">
        <a href={`${pinUrl}`} target="_blank" className="pin-index-item pin-link">
          <i className="fas fa-external-link-alt pin-link-icon"></i>
          <div className="pin-index-item pin-link-text">
            {abbrvPinUrl}
          </div>
        </a>
        <div></div>
      </div>
    </div>
  );
};

export default PinIndexItemButtons;