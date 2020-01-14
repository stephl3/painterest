import React from 'react';
import { Link } from 'react-router-dom';

class PinShow extends React.Component {
  constructor(props) {
    super(props);
    this.goBack = this.goBack.bind(this);
  }

  componentDidMount() {
    this.props.fetchPin(this.props.match.params.pinId);
  }

  goBack(e) {
    e.preventDefault();
    e.stopPropagation();
    this.props.history.goBack();
  }

  render() {
    const { pin, users, currentUserId, openEditPin, openNewBoardPin } = this.props;
    if (!pin) return <div style={{"paddingTop": "65px"}}>Loading...</div>;

    const pinOwner = pin.user || {username: ""};
    const editPinLink = (pin.userId === currentUserId) ? (
      <a
        className="pin-show edit-pin-link"
        onClick={() => openEditPin(pin.id)}
      >
        <i className="fas fa-pencil-alt edit-pin-icon"></i>
      </a>
    ) : (
      null
    );
    const pinCreditPhoto = (
      <Link
        to={`/${pinOwner.username}`}
        className="pin-show profile-link-frame"
      >
        <img src={pinOwner.photo} className="pin-show profile-link-photo"/>
      </Link>
    );
    const name = (pinOwner.id === currentUserId) ? (
      "You"
    ) : (
      `${pinOwner.firstName} ${pinOwner.lastName}`
    )
    const pinCreditText = (
      <div className="pin-show credit-summary">
        <Link
          to={`/${pinOwner.username}`}
          className="pin-show credit-link"
        >
          {name}
        </Link>
        <span> saved to </span>
        <Link
          to={`/${pinOwner.username}/${pin.boardTitle}`}
          className="pin-show credit-link"
        >
          {pin.boardTitle}
        </Link>
      </div>
    )
    
    return (
      <div className="pin-show main-container"
        onClick={this.goBack}>
        <a
          className="pin-show back-button"
          onClick={this.goBack}
        >
          <i className="fas fa-arrow-left back-icon"></i>
        </a>
        <div className="pin-show container">
          <div className="pin-show first-half">
            <a
              href={pin.url}
              target="_blank"
              className="pin-show pin-link"
            >
              <img src={pin.photo} className="pin-show pin-photo"/>
            </a>
          </div>
          <div className="pin-show second-half">
            <div className="pin-show nav-bar">
              {editPinLink}
              <a
                className="pin-show save-board-pin-link"
                onClick={() => openNewBoardPin(pin.id)}
              >
                <div className="pin-show save-board-pin-text">Save</div>
              </a>
            </div>
            <div className="pin-show info">
              <div className="pin-show url-link container">
                <a
                  href={pin.url}
                  target="_blank"
                  className="pin-show url-link"
                >
                  <div className="pin-show url-text">{pin.url}</div>
                </a>
              </div>
              <div className="pin-show title container">
                <a
                  href={pin.url}
                  target="_blank"
                  className="pin-show title-link"
                >
                  <div className="pin-show title-text">{pin.title}</div>
                </a>
              </div>
              <div className="pin-show description">
                {pin.description}
              </div>
            </div>
            <div className="pin-show credit">
              {pinCreditPhoto}
              {pinCreditText}
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default PinShow;