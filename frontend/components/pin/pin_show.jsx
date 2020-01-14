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
    const pinOwnerFullName = `${pinOwner.firstName} ${pinOwner.lastName}`;
    const imgLink = (pin.url === "") ? (
      <div
        className="pin-show pin-link"
      >
        <img src={pin.photo} className="pin-show pin-photo" />
      </div>
    ) : (
      <a
        href={pin.url}
        target="_blank"
        className="pin-show pin-link url"
      >
        <img src={pin.photo} className="pin-show pin-photo" />
      </a>
    );
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

    const pinSource = (pin.url === "") ? (
      <a
        href={pin.url}
        target="_blank"
        className="pin-show source-link"
      >
        <div>{pin.url}</div>
      </a>
    ) : (
      <div className="pin-show source-link">
          <div>Uploaded by&nbsp;
            <Link to={`/${pinOwner.username}`}>
              <strong>{pinOwnerFullName}</strong>
            </Link>
          </div>
      </div>
    );
    const pinTitle = (pin.url === "") ? (
      <div className="pin-show title">{pin.title}</div>
    ) : (
      <a
        href={pin.url}
        target="_blank"
        className="pin-show title"
      >
        {pin.title}
      </a>
    );

    const pinCreditPhoto = (
      <Link
        to={`/${pinOwner.username}`}
        className="pin-show profile-link-frame"
      >
        <img src={pinOwner.photo} className="pin-show profile-link-photo"/>
        <div className="pin-show overlay"></div>
      </Link>
    );
    const name = (pinOwner.id === currentUserId) ? (
      "You"
    ) : (
      {pinOwnerFullName}
    )
    const pinCreditText = (
      <div className="pin-show credit-summary">
        <Link
          to={`/${pinOwner.username}`}
          className="pin-show credit-link"
        >
          <strong>{pinOwnerFullName}</strong>
        </Link>
        <span>&nbsp;saved to&nbsp;</span>
        <Link
          to={`/${pinOwner.username}/${pin.boardTitle}`}
          className="pin-show credit-link"
        >
          <strong>{pin.boardTitle}</strong>
        </Link>
      </div>
    );
    
    return (
      <div className="pin-show main-container"
        onClick={this.goBack}>
        <a
          className="pin-show back-button"
          onClick={this.goBack}
        >
          <i className="fas fa-arrow-left back-icon"></i>
        </a>
        <div className="pin-show wrapper"
          onClick={this.goBack}>
          <div className="pin-show container"
            onClick={(e) => e.stopPropagation()}>
            <div className="pin-show first-half">
              <div className="pin-show link-area">
                {imgLink}
                <div className="pin-show overlay"></div>
              </div>
            </div>
            <div className="pin-show second-half">
              <div className="pin-show nav-bar">
                {editPinLink}
                <div></div>
                <a
                  className="pin-show save-board-pin-link"
                  onClick={() => openNewBoardPin(pin.id)}
                >
                  <div className="pin-show save-board-pin-text">Save</div>
                </a>
              </div>
              <div className="pin-show info">
                {pinSource}
                {pinTitle}
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
      </div>
    );
  }
}

export default PinShow;