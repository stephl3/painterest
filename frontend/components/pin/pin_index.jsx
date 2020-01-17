import React from "react";
import PinIndexItem from "./pin_index_item";

const shuffle = require("shuffle-array");
const masonryEvents = ["load", "resize"];

class PinIndex extends React.Component {
  constructor(props) {
    super(props);
    this.resizeGridItem = this.resizeGridItem.bind(this);
    this.resizeAllGridItems = this.resizeAllGridItems.bind(this);
  }

  resizeGridItem(item) {
    let grid = document.getElementById('grid');
    let rowHeight = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-auto-rows'));
    let rowGap = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-row-gap'));
    let itemImg = item.querySelector(".masonry-image");
    let rowSpan = Math.ceil((itemImg.getBoundingClientRect().height + rowGap) / (rowHeight + rowGap));
    item.style.gridRowEnd = "span " + rowSpan;
    itemImg.style.height = '100%';
  }

  resizeAllGridItems() {
    let allItems = document.getElementsByClassName("pin-index-item container");
    if (allItems) {
      for (let i = 0; i < allItems.length; i++)
        this.resizeGridItem(allItems[i]);
    }
  }

  componentDidMount() {
    masonryEvents.forEach(
      (e) => window.addEventListener(event, this.resizeAllGridItems)
    );
  }

  render() {
    const { currentUser, page, pins, loading,
      openEditPin, openNewBoardPin, createBoardPin } = this.props;
    const loader = (loading) ? (
      <div className="loading-background">
        <div className="loading"></div>
      </div>
    ) : null;
    
    const pinIndexItems = (pins).map(pin => (
      <PinIndexItem
        key={pin.id}
        user={currentUser}
        page={page}
        pin={pin}
        openEditPin={openEditPin}
        openNewBoardPin={openNewBoardPin}
        createBoardPin={createBoardPin}
      />
    ));
    return (
      <div className="pin-index container">
        {loader}
        <div className="pin-index" id="grid-container">
          <div className="pin-index masonry" id="grid">
            {pinIndexItems}
          </div>
        </div>
      </div>
    );
  };
};

export default PinIndex;