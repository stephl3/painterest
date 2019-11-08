import React from "react";
import { Link } from "react-router-dom";

import ProfileHeader from "./profile_header";
import ProfileContent from "./profile_content";

class ProfileShow extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const { currentUser, openModal, closeModal } = this.props;

    return (
      <div id="profile-background">
        <div id="profile-container">
          <div id="profile">
            <div id="profile-header-container">
              <ProfileHeader
                user={currentUser}
                openModal={openModal}
                closeModal={closeModal}
              />
            </div>
            <div id="profile-content-container">
              <ProfileContent
                user={currentUser}
                openModal={openModal}
                closeModal={closeModal}
              />
            </div>
          </div>
        </div>
      </div>
    )
  }
};

export default ProfileShow;