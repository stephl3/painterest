import React from "react";
import { Link } from "react-router-dom";

class CreatePinForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = Object.assign({}, this.props.pin, {
      photoPreview: null,
      boardId: null,
      boardList: false
    });

    // this.showBoardList = this.showBoardList.bind(this);
    this.hideBoardList = this.hideBoardList.bind(this);
    this.toggleBoardList = this.toggleBoardList.bind(this);
    this.selectBoard = this.selectBoard.bind(this);
    this.handleSave = this.handleSave.bind(this);
    this.handleFile = this.handleFile.bind(this);
    this.deleteImage = this.deleteImage.bind(this);
  }

  componentDidMount() {
    this.props.fetchBoards();
  }
  
  // showBoardList() {
  //   this.setState({ boardList: true });
  // }
  
  hideBoardList(e) {
    this.setState({ boardList: false });
  }

  toggleBoardList() {
    this.setState({ boardList: !this.state.boardList });
  }

  selectBoard(e) {
    this.setState({ boardId: e.currentTarget.value, boardList: false });
  }

  handleSave(e) {
    e.stopPropagation();
    const details = Object.assign({}, this.state);
    delete details["photoPreview"];
    delete details["board"];
    delete details["boardList"];

    const formData = new FormData();
    for (let key in details) {
      formData.append(`pin[${key}]`, details[key])
    };
    const createBoardPin = (boardPin) => this.props.createBoardPin(boardPin);
    const boardId = this.state.boardId;

    return this.props.processForm(formData)
      .then(res => (createBoardPin({
          "board_id": boardId,
          "pin_id": parseInt(Object.keys(res.pin)[0])
        })
      ))
      .then(() => window.history.go(-1));
  }

  uploadImage() {
    document.getElementById("image-upload-input").click();
  }

  deleteImage() {
    this.setState({ photoPreview: null });
  }

  handleFile(e) {
    const file = e.currentTarget.files[0];
    const fileReader = new FileReader();
    fileReader.onloadend = () => {
      this.setState({ photo: file, photoPreview: fileReader.result });
    };

    if (file) {
      fileReader.readAsDataURL(file);
    }
  }

  changeInput(field) {
    return (
      e => this.setState({ [field]: e.currentTarget.value })
    );
  }

  render() {
    const { currentUser, boards, errors, formType } = this.props;

    const klass = (this.state.boardList) ? 'show' : 'hide';
    const dropdownLabel = (this.state.boardId === null) ? (
      "Select"
    ) : (
      boards.find(board => board.id === this.state.boardId).title
    );
    const clickSave = (this.state.boardId === null) ? (
      null
    ) : (
      this.handleSave
    );

    const boardListItems = (boards.length > 0) ? (
      boards.map(board => {
        const firstPinImage = (board.firstPin !== undefined) ? (
          <img src={`${board.firstPin.photo}`}
            className="board-li pin-photo" />
        ) : (
            <div className="board-li pin-photo"></div>
          );
        const secret = (board.secret) ? 'show ish' : 'hide';
        return (
          <li
            key={board.id}
            className="create-pin board-list-item"
            value={board.id}
            onClick={this.selectBoard}
          >
            <div className="create-pin board-li content">
              <div className="board-li pin-photo-frame">
                {firstPinImage}
                <div></div>
              </div>
              <div className="board-li title">{board.title}</div>
              <div className={`board-li secret-icon-container ${secret}`}>
                <i className="fas fa-lock board-li secret-icon"></i>
              </div>
            </div>
          </li>
        )}
      )
    ) : (
      null
    );

    const displayImage = (this.state.photoPreview) ? (
      <div className="create-pin" id="image-uploaded-container">
        <img src={this.state.photoPreview} className="create-pin" id="photo" />
        <div className="create-pin" id="delete-image-button-container">
          <button className="create-pin" id="delete-image-button" onClick={this.deleteImage}>
            <div className="create-pin" id="trash-icon-container">
              <i className="fas fa-trash create-pin" id="trash-icon"></i>
            </div>
          </button>
        </div>
      </div>
    ) : (
      <div className="create-pin" id="image-upload-container">
        <div className="create-pin" id="image-upload-area" onClick={this.uploadImage}>
          <div className="create-pin" id="image-upload-area-border">
            <div className="create-pin" id="upload-icon-container">
              <i className="fas fa-arrow-circle-up" id="upload-icon"></i>
            </div>
            <div className="create-pin" id="instruction">
              Click to upload
            </div>
          </div>
          <div className="create-pin" id="upload-recommendation">
            Recommendation: Use high-quality .jpg files less than 2 MB
        </div>
        </div>
        <input
          type="file"
          onChange={this.handleFile}
          className="create-pin"
          id="image-upload-input" />
      </div>
    );

    return (
      <div id="create-pin-background" onClick={this.hideBoardList}>
        <div id="create-pin-container">
          <div className="create-pin" id="sizing">
            <div className="create-pin" id="header"
            onClick={e => e.stopPropagation()}>
              <div
                className="create-pin"
                id="buttons"
                onClick={this.toggleBoardList}
                onBlur={this.hideBoardList}
              >
                <div className="create-pin" id="select-board-dropdown">
                  <div className="create-pin" id="select-board-label">
                    <div className="create-pin" id="selected-board">
                      {dropdownLabel}
                    </div>
                  </div>
                  <div className="create-pin" id="dropdown-icon-container">
                    <i className="fas fa-angle-down" id="dropdown-icon"></i>
                  </div>
                </div>
                <div className="create-pin" id="save-button" onClick={clickSave}>
                  <div className="create-pin" id="save-button-label">
                    Save
                  </div>
                </div>
                <div className={`create-pin board-list container ${klass}`}>
                  <div className="create-pin board-list triangle">
                    <svg width="24" height="24">
                      <path d="M0 24 L12 12 L24 24"></path>
                    </svg>
                  </div>
                  <div className="create-pin board-list header">
                    <div className="create-pin board-list title">
                      All boards
                    </div>
                  </div>
                  <ul className="create-pin board-list">
                    {boardListItems}
                  </ul>
                </div>
              </div>
            </div>
            <div className="create-pin" id="content">
              <div className="create-pin" id="image-container">
                {displayImage}
              </div>
              <div className="create-pin" id="details-container">
                <div className="create-pin" id="title-container">
                  <input
                    type="text"
                    className="create-pin"
                    id="title"
                    placeholder="Add your title"
                    value={this.state.title}
                    onChange={this.changeInput("title")} />
                </div>
                <div className="create-pin" id="user-container">
                  <div className="create-pin" id="user-image-frame">
                    <img
                      src={currentUser.photo}
                      alt="profile-icon"
                      className="create-pin"
                      id="user-image" />
                  </div>
                  <div className="create-pin" id="username">
                    {currentUser.firstName} {currentUser.lastName}
                  </div>
                </div>
                <div className="create-pin" id="description-container">
                  <textarea
                    rows="1"
                    className="create-pin"
                    id="description"
                    placeholder="Tell everyone what your Pin is about"
                    value={this.state.description}
                    onChange={this.changeInput("description")} />
                </div>
                <div className="create-pin" id="url-container">
                  <textarea
                    rows="1"
                    className="create-pin"
                    id="url"
                    placeholder="Add a destination link"
                    value={this.state.url}
                    onChange={this.changeInput("url")} />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default CreatePinForm;