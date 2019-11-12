import React from "react";
import { Link, NavLink } from "react-router-dom";


class EditProfileForm extends React.Component {
  constructor(props) {
    super(props);
    // debugger;
    this.state = Object.assign(
      {}, this.props.currentUser,
      { photoPreview: null });
    // this.handleCancel = this.handleCancel.bind(this);
    this.handleDone = this.handleDone.bind(this);
    this.handleFile = this.handleFile.bind(this);
    // this.handleChange = this.handleChange.bind(this);
  }

  handleCancel() {

  }

  handleDone(e) {
    e.preventDefault();
    const formData = new FormData();
    formData.append("user[photo]", this.state.photo)
    formData.append("user[firstName]", this.state.firstName)
    formData.append("user[lastName]", this.state.lastName)
    formData.append("user[username]", this.state.username)
    formData.append("user[email]", this.state.email)
    formData.append("user[description]", this.state.description)
    formData.append("user[location]", this.state.location)

    $.ajax({
      method: "PATCH",
      url: `/api/users/${this.state.id}`,
      data: formData,
      contentType: false,
      processData: false
    }).then(window.setTimeout(() => window.location.reload(false), 2000))
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
    const { currentUser } = this.props;
    const profilePhoto = (this.state.photo) ? (
      <img src={this.state.photo} alt="profile_photo" className="edit-profile" id="photo" />
    ) : (
      <i className="fas fa-user-circle" id="photo"></i>
    );
    const displayPhoto = (this.state.photoPreview) ? (
      <img src={this.state.photoPreview} className="edit-profile" id="photo" />
    ) : (
      profilePhoto
    );
    
    let currentState = Object.assign({}, this.state);
    delete currentState["photoPreview"];
    const disabled = (JSON.stringify(currentState) === JSON.stringify(currentUser)) ? "disabled" : "";
    
    return (
      <div id="settings-container-padding">
        <div id="settings-container">
          <div id="back-button-width">
            <div id="back-button-padding">
              <div id="back-button-position">
                <div id="back-button-container">
                  <NavLink to={`/${currentUser.username}`} id="user-profile-link">
                    <div id="back-icon-container-shadow">
                      <div id="back-icon-container">
                        <i className="fas fa-arrow-left" id="back-icon"></i>
                      </div>
                    </div>
                  </NavLink>
                </div>
              </div>
            </div>
          </div>
          <div id="edit-profile-form-width">
            <div id="edit-profile-form-outer-container">
              <div id="edit-profile-form-inner-container">
                <form id="edit-profile-form">
                  <div className="edit-profile" id="header-border">
                    <div className="edit-profile" id="header-flex">
                      <div className="edit-profile" id="title-container">
                        <div className="edit-profile" id="title">
                          <h4 className="edit-profile" id="title-label">Edit Profile</h4>
                          <div className="edit-profile" id="title-spacing"></div>
                          <div className="edit-profile" id="subtitle">
                            People on Pinterest will get to know you with the info below
                          </div>
                        </div>
                      </div>
                      <div className="edit-profile" id="buttons-container">
                        <div className="edit-profile" id="buttons">
                          <div className="edit-profile button-container">
                            <button
                              className={`edit-profile cancel button ${disabled}`}
                              id="cancel-button"
                            >
                              <div className={`edit-profile cancel button-label ${disabled}`}>Cancel</div>
                            </button>
                          </div>
                          <div className="edit-profile button-container">
                            <button
                              className={`edit-profile done button ${disabled}`}
                              id="done-button"
                              onClick={this.handleDone}
                            >
                              <div className={`edit-profile done button-label ${disabled}`}>Done</div>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div className="edit-profile" id="spacer-container">
                    <div className="edit-profile" id="spacer">Photo</div>
                  </div>
                  <div className="edit-profile" id="photo-change-container">
                    <div className="edit-profile" id="photo-container-size">
                      <div className="edit-profile" id="photo-container-border">
                        <div className="edit-profile" id="photo-frame-container">
                          <div className="edit-profile" id="photo-frame">
                            {displayPhoto}
                          </div>
                        </div>
                      </div>
                    </div>
                    <div className="edit-profile" id="change-photo-button">
                      <input
                        type="file"
                        onChange={this.handleFile}
                        className="edit-profile button"
                        id="change-button"
                      />
                      <button
                        className="edit-profile button"
                        id="change-photo"
                        onClick={() => document.getElementById("change-button").click()}
                      ><div className="edit-profile button-label" id="change-photo">Change</div>
                      </button>
                    </div>
                  </div>
                  <div className="edit-profile" id="name-container">
                    <div className="edit-profile" id="full-name">
                      <div className="edit-profile" id="first-name-wrapper">
                        <div className="edit-profile" id="first-name-container">
                          <div className="edit-profile field-container" id="first-name">
                            <div className="edit-profile label-container">
                              <label className="edit-profile label">First name</label>
                            </div>
                            <div className="edit-profile input-container">
                              <input
                                type="text"
                                placeholder="Ex. Jo"
                                value={this.state.firstName}
                                onChange={this.changeInput("firstName")}
                                className="edit-profile input"
                              />
                            </div>
                          </div>
                        </div>
                      </div>
                      <div className="edit-profile" id="last-name-wrapper">
                        <div className="edit-profile" id="last-name-container">
                          <div className="edit-profile field-container" id="last-name">
                            <div className="edit-profile label-container">
                              <label className="edit-profile label">Last name</label>
                            </div>
                            <div className="edit-profile input-container">
                              <input
                                type="text"
                                placeholder="Ex. Jo"
                                value={this.state.lastName}
                                onChange={this.changeInput("lastName")}
                                className="edit-profile input"
                              />
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div className="edit-profile" id="username-wrapper">
                    <div className="edit-profile" id="username-container">
                      <div className="edit-profile field-container" id="username">
                        <div className="edit-profile label-container">
                          <label className="edit-profile label">Username</label>
                        </div>
                        <div className="edit-profile" id="website-username">
                          <div className="edit-profile" id="website">
                            www.pinterest.com/
                          </div>
                          <div className="edit-profile" id="username">
                            <input
                              type="text"
                              value={this.state.username}
                              onChange={this.changeInput("username")}
                              className="edit-profile input"
                            />
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div className="edit-profile" id="email-wrapper">
                    <div className="edit-profile" id="email-container">
                      <div className="edit-profile field-container" id="email">
                        <div className="edit-profile label-container">
                          <label className="edit-profile label">Email</label>
                        </div>
                        <div className="edit-profile input-container">
                          <input
                            type="text"
                            value={this.state.email}
                            onChange={this.changeInput("email")}
                            className="edit-profile input"
                          />
                        </div>
                      </div>
                    </div>
                  </div>
                  <div className="edit-profile" id="description-wrapper">
                    <div className="edit-profile" id="description-container">
                      <div className="edit-profile field-container" id="description">
                        <div className="edit-profile label-container">
                          <label className="edit-profile label">Description</label>
                        </div>
                        <div className="edit-profile input-container">
                          <textarea
                            placeholder="Write a little bit about yourself here"
                            value={this.state.description}
                            onChange={this.changeInput("description")}
                            className="edit-profile input"
                          />
                        </div>
                      </div>
                    </div>
                  </div>
                  <div className="edit-profile" id="location-wrapper">
                    <div className="edit-profile" id="location-container">
                      <div className="edit-profile field-container" id="location">
                        <div className="edit-profile label-container">
                          <label className="edit-profile label">Location</label>
                        </div>
                        <div className="edit-profile input-container">
                          <input
                            type="text"
                            value={this.state.location}
                            onChange={this.changeInput("location")}
                            className="edit-profile input"
                          />
                        </div>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        
      </div>
    )
  }
};

export default EditProfileForm;