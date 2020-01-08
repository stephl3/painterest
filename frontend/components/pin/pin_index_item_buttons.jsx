import React from "react";


const PinIndexItemButtons = ({ user, pin, openEditPin, openNewBoardPin, createBoardPin }) => {
  const pinUrl = pin.url;

  return (
    <div className="pin-index-item buttons-container">
      <div className="pin-index-item buttons upper">

      </div>
      <div className="pin-index-item buttons lower">
        <div className="pin-index-item pin-url">
          <a href={`pinUrl`} className="pin-index-item pin-url">
            <div className="pin-index-item link-icon">
              <i class="fas fa-external-link-alt"></i>
            </div>
            <div className="pin-index-item link-text">
              {pinUrl}
            </div>
          </a>
        </div>
      </div>
    </div>
  );
};

export default PinIndexItemButtons;