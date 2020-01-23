import React from "react";
import { Link, withRouter } from "react-router-dom";


const masonryEvents = ["load", "resize"];

class PinIndexItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.pin;

    this.resizeGridItem = this.resizeGridItem.bind(this);
  }

  resizeGridItem() {
    let item = document.getElementById(this.state.id);
    let grid = document.getElementById('grid');
    let rowHeight = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-auto-rows'));
    let rowGap = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-row-gap'));
    let itemImg = item.querySelector(".masonry-image");
    let rowSpan = Math.ceil((itemImg.getBoundingClientRect().height + rowGap) / (rowHeight + rowGap));
    // if (this.state.title !== '') rowSpan += 2;
    item.style.gridRowEnd = "span " + rowSpan;
  }

  componentDidMount() {
    setTimeout(() => this.resizeGridItem(), 1500);
    masonryEvents.forEach((e) => window.addEventListener(e, this.resizeGridItem));
  }

  render() {
    const { userId, user, page, pin, openEditPin, openNewBoardPin } = this.props;

    const pinTitle = (userId !== null && page === "home" && pin.title !== "") ? (
      <div className="pin-index-item title-container">
        <div className="pin-index-item title">{pin.title}</div>
      </div>
    ) : null;

    const editPinLink = (page === 'profile' && location.hash.includes(user.username)) ? (
      <a
        className="pin-index-item edit-pin-link"
        onClick={() => openEditPin(pin.id)}
      >
        <i className="fas fa-pencil-alt edit-pin-icon"></i>
      </a>
    ) : null;
    
    const openBoardPinLink = (
      <a
        className="pin-index-item save-board-pin-link"
        onClick={() => openNewBoardPin(pin.id)}
      >
        <div className="pin-index-item save-board-pin-text">Save</div>
      </a>
    );

    const pinUrl = pin.url;
    const shortPinUrl = pinUrl.slice(12, 22) + "...";
    const pinLink = (pinUrl !== '') ? (
      <a href={`${pinUrl}`} target="_blank" className="pin-index-item pin-link">
        <i className="fas fa-external-link-alt pin-link-icon"></i>
        <div className="pin-index-item pin-link-text">
          {shortPinUrl}
        </div>
      </a>
    ) : null;
    
    return (
      <div id={`${this.state.id}`} className="pin-index-item container">
        <div className="pin-index-item masonry-item">
          <Link
            to={`/pin/${pin.id}`}
            className="pin-index-item pin-show-link"
          >
            <div className="pin-index-item overlay"></div>
            <img src={pin.photo} className="pin-index-item masonry-image"/>
          </Link>
          <div className="pin-index-item links">
            <div className="pin-index-item edit-pin-link-container">{editPinLink}</div>
            <div className="save-board-pin-link-container">{openBoardPinLink}</div>
            <div className="pin-index-item pin-link-container">{pinLink}</div>
          </div>
        </div>
        {pinTitle}
      </div>
    );
  }
};

export default PinIndexItem;