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
    // debugger;
    let allItems = document.getElementsByClassName("pin-index-item container");
    if (allItems) {
      for (let i = 0; i < allItems.length; i++)
        this.resizeGridItem(allItems[i]);
    }
  }

  UNSAFE_componentWillMount() {
    this.props.fetchPins();
    setTimeout(() => this.resizeAllGridItems(), 1500);
    masonryEvents.forEach(
      (e) => window.addEventListener(event, this.resizeAllGridItems)
    );
  }

  // componentDidMount() {
  //   // this.props.startLoading();
  //   // when to fetch pins and when to not...?
  //   this.props.fetchPins();
  //   setTimeout(() => this.resizeAllGridItems(), 2000);

  //   masonryEvents.forEach(
  //     (e) => window.addEventListener(event, this.resizeAllGridItems)
  //   );
  //   // setTimeout(() => this.props.stopLoading(), 3000);
  // }

  render() {
    const { currentUser, pins, loading,
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