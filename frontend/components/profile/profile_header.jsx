import React from "react";

import ProfileNavBar from "./profile_nav_bar";
import ProfileDetails from "./profile_details";
import ProfileSwitches from "./profile_switches";

const ProfileHeader = ({ user, openModal, closeModal }) => {
  return (
    <div id="profile-header">
      <div id="profile-nav-bar-container">
        <ProfileNavBar
          user={user}
          openModal={openModal}
          closeModal={closeModal}
        />
      </div>
      <div id="profile-details-container">
        <ProfileDetails
          user={user}
        />
      </div>
      <div id="profile-switches-container">
        <ProfileSwitches />
      </div>
    </div>
  )
}

export default ProfileHeader;