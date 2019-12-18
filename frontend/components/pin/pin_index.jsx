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
    let itemImg = item.querySelector(".masonry-content");
    let rowSpan = Math.ceil((itemImg.getBoundingClientRect().height + rowGap) / (rowHeight + rowGap));
    item.style.gridRowEnd = "span " + rowSpan;
    itemImg.style.height = '100%';
  }

  resizeAllGridItems() {
    // debugger;
    let allItems = document.getElementsByClassName("pin-index item-container");
    if (allItems) {
      for (let i = 0; i < allItems.length; i++)
        this.resizeGridItem(allItems[i]);
    }
  }

  componentDidMount() {
    this.props.fetchPins().then(setTimeout(
      () => this.resizeAllGridItems(), 2000)
    )
    masonryEvents.forEach(
      (e) => window.addEventListener(event, this.resizeAllGridItems)
    )
  }

  render() {
    const { currentUser, pins, deleteBoardPin, createBoardPin, openModal } = this.props;

    const pinIndexItems = (shuffle(pins)).map(pin => (
      <PinIndexItem
        key={pin.id}
        pin={pin}
        deleteBoardPin={deleteBoardPin}
        createBoardPin={createBoardPin}
        openModal={openModal}
      />
    ));

    return (
      <div className="pin-index" id="background">
        <div className="pin-index" id="main-container">
          <div className="pin-index" id="grid-container">
            <div className="pin-index masonry" id="grid">
              {pinIndexItems}
            </div>
          </div>
        </div>
      </div>
    );
  };
};

export default PinIndex;