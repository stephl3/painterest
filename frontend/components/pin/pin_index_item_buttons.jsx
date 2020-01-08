import React from "react";


const PinIndexItemButtons = ({ user, pin, openEditPin, openNewBoardPin }) => {
  const pinUrl = pin.url;


  return (
    <div className="pin-index-item buttons-container">
      <div className="pin-index-item buttons upper">
        <a className="pin-index-item edit-pin-link">
          <div className="pin-index-item edit-pin-icon">
            <i className="fas fa-pencil"></i>
          </div>
        </a>
        <a className="pin-index-item save-board-pin-link">
          <div className="pin-index-item save-board-pin-text">
            Save
          </div>
        </a>
      </div>
      <div className="pin-index-item buttons lower">
        <a href={`pinUrl`} target="_blank" className="pin-index-item pin-url">
          <div className="pin-index-item pin-link-icon">
            <i className="fas fa-external-link-alt"></i>
          </div>
          <div className="pin-index-item pin-link-text">
            {pinUrl}
          </div>
        </a>
      </div>
    </div>
  );
};

export default PinIndexItemButtons;