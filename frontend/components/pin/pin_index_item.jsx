import React from "react";
import PinIndexItemButtons from "./pin_index_item_buttons";

import { Link, withRouter } from "react-router-dom";
// import LinesEllipsis from "react-lines-ellipsis";



const PinIndexItem = ({ user, pin, openEditPin, openNewBoardPin }) => {

  return (
    <div className="pin-index-item container">
      <div className="pin-index-item masonry-item">
        <div className="pin-index-item overlay"></div>
        <Link
          to={`/pin/${pin.id}`}
          className="pin-index-item pin-show-link"
        >
          <img src={pin.photo} className="pin-index-item masonry-image"/>
        </Link>
        <PinIndexItemButtons
          user={user}
          pin={pin}
          openEditPin={openEditPin}
          openNewBoardPin={openNewBoardPin}
        />
      </div>
    </div>
  );
};

export default PinIndexItem;