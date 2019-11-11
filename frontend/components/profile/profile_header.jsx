import React from "react";

import ProfileNavBar from "./profile_nav_bar";
import ProfileDetails from "./profile_details";

const ProfileHeader = ({ user, openModal, closeModal }) => {
  return (
    <div id="profile-header">
      <div id="profile-header-upper">
        <div id="profile-header-fixed">
          <div id="profile-nav-bar-container">
            <ProfileNavBar
              user={user}
              openModal={openModal}
              closeModal={closeModal}
            />
          </div>
        </div>
        <div id="profile-details-container">
          <ProfileDetails user={user} />
        </div>
      </div>

    </div>
  )
}

export default ProfileHeader;