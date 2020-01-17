import React from "react";
import PinIndexItem from "./pin_index_item";

const shuffle = require("shuffle-array");
const masonryEvents = ["load", "resize"];

class PinIndex extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      // pins: [],
      pinSets: [],
      pinSetIdx: 0,
      loadedPins: []
    };

    this.splitPins = this.splitPins.bind(this);
    this.handleScroll = this.handleScroll.bind(this);
    // this.resizeGridItem = this.resizeGridItem.bind(this);
    // this.resizeAllGridItems = this.resizeAllGridItems.bind(this);
  }

  // componentDidMount() {
  //   // debugger
  //   this.setState({ pins: this.props.pins })
  // }

  componentWillUnmount() {
    window.removeEventListener("scroll", this.handleScroll);
  }

  componentDidUpdate(prevProps, prevState) {
    // debugger;
    const pins = this.props.pins;
    if (prevProps.pins.length !== this.props.pins.length) {
      window.addEventListener("scroll", this.handleScroll);
      const pinSets = this.splitPins(pins);
      this.setState({ pinSets: pinSets }, () => {
        debugger
        if (this.state.pinSetIdx === 0) this.setState({ loadedPins: pinSets[0]})
      });
    }
    if (prevState.pinSetIdx !== this.state.pinSetIdx) {
      debugger
      const updatedPins = this.state.loadedPins.concat(this.pinSets[this.state.pinSetIdx]);
      this.setState({ loadedPins: updatedPins })
    }
  }

  splitPins(pins) {
    const arr = [];
    for (let i = 0; i < pins.length; i += 30) {
      arr.push(pins.slice(i, i+30));
    }
    return arr;
  }

  handleScroll() {
    const windowHeight = "innerHeight" in window ? window.innerHeight : document.documentElement.offsetHeight;
    const body = document.body;
    const html = document.documentElement;

    const docHeight = Math.max(body.scrollHeight, body.offsetHeight, html.clientHeight, html.scrollHeight, html.offsetHeight);
    const windowBottom = windowHeight + window.pageYOffset;
    const currIdx = this.state.pinSetIdx;
    if (windowBottom >= docHeight && currIdx < this.state.loadedPins.length - 1) {
      debugger
      this.setState({ pinsSetIdx: currIdx + 1 });
    }
  }

  // resizeGridItem(item) {
  //   let grid = document.getElementById('grid');
  //   let rowHeight = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-auto-rows'));
  //   let rowGap = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-row-gap'));
  //   let itemImg = item.querySelector(".masonry-image");
  //   let rowSpan = Math.ceil((itemImg.getBoundingClientRect().height + rowGap) / (rowHeight + rowGap));
  //   item.style.gridRowEnd = "span " + rowSpan;
  //   itemImg.style.height = '100%';
  // }

  // resizeAllGridItems() {
  //   let allItems = document.getElementsByClassName("pin-index-item container");
  //   if (allItems) {
  //     for (let i = 0; i < allItems.length; i++)
  //       this.resizeGridItem(allItems[i]);
  //   }
  // }

  render() {
    const { page, pins, currentUserId, user, openEditPin, openNewBoardPin } = this.props;
    debugger
    const pinIndexItems = (this.state.loadedPins).map(pin => (
      <PinIndexItem
        key={pin.id}
        page={page}
        pin={pin}
        userId={currentUserId}
        user={user}
        openEditPin={openEditPin}
        openNewBoardPin={openNewBoardPin}
      />
    ));

    return (
      <div className="pin-index container">
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