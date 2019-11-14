import React from "react";

class CreatePinForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = Object.assign({}, this.props.pin,
      { photoPreview: null });
    this.handleSave = this.handleSave.bind(this);
    this.handleFile = this.handleFile.bind(this);
    this.deleteImage = this.deleteImage.bind(this);
  }

  handleSave(e) {
    e.preventDefault();
    const details = Object.assign({}, this.state);
    delete details["photoPreview"];
    debugger;
    const formData = new FormData();
    for (let key in details) {
      formData.append(`pin[${key}]`, details[key])
    }

    this.props.processForm(formData)
      // .then(this.props.createBoardPin({ "pin_id": 1, "board_id": 1 }));
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
    const { currentUser, errors, formType } = this.props;
    const displayImage = (this.state.photoPreview) ? (
      <div className="create-pin" id="image-uploaded-container">
        <img src={this.state.photoPreview} className="create-pin" id="photo"/>
        <div className="create-pin" id="delete-image-button-container">
          <button className="create-pin" id="delete-image-button" onClick={this.deleteImage}>
            <div className="create-pin" id="trash-icon-container">
              <i className="fas fa-trash" id="trash-icon"></i>
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
    )
    return (
      <div id="create-pin-background">
        <div id="create-pin-container">
          <div className="create-pin" id="sizing">
            <div className="create-pin" id="header">
              <div className="create-pin" id="buttons">
                <button className="create-pin" id="select-board-dropdown">
                  <div className="create-pin" id="select-board-label">
                    Select
                  </div>
                  <div className="create-pin" id="dropdown-icon-container">
                    <i className="fas fa-angle-down" id="dropdown-icon"></i>
                  </div>
                </button>
                <button className="create-pin" id="save-button" onClick={this.handleSave}>
                  <div className="create-pin" id="save-button-label">
                    Save
                  </div>
                </button>
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
                    onChange={this.changeInput("title")}/>
                </div>
                <div className="create-pin" id="user-container">
                  <div className="create-pin" id="user-image-frame">
                    <img
                      src={currentUser.photo}
                      alt="profile-icon"
                      className="create-pin"
                      id="user-image"/>
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
                    onChange={this.changeInput("description")}/>
                </div>
                <div className="create-pin" id="url-container">
                  <textarea
                    rows="1"
                    className="create-pin"
                    id="url"
                    placeholder="Add a destination link"
                    value={this.state.url}
                    onChange={this.changeInput("url")}/>
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