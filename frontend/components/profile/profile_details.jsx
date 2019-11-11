import React from "react";
import { Link, NavLink } from "react-router-dom";

const ProfileDetails = ({ user }) => {
  return (
    <div id="profile-details-background">
      <div id="profile-details">
        <div id="profile-basics-container">
          <div id="profile-basics">
            <div id="profile-name-container">
              <div id="profile-name">
                {user.firstName + " " + user.lastName}
              </div>
            </div>
            <div id="profile-follows-container">
              <div id="profile-follows">
                <div id="profile-followers-container">
                  <Link to={`/${user.username}/followers`} className="profile-follows-link">
                    <h4>1,000,000 followers</h4>
                  </Link>
                  <div id="profile-follows-spacer-container">
                    <div id="profile-follows-spacer">
                      ·
                    </div>
                  </div>
                </div>
                <div id="profile-following-container">
                  <Link to={`/${user.username}/following`} className="profile-follows-link">
                    <h4>1 following</h4>
                  </Link>
                </div>
              </div>
            </div>
            <div id="profile-personal-container">
              <div id="profile-personal">
                <h4>{user.location} · {user.description}</h4>
              </div>
            </div>
          </div>
        </div>
        <div id="profile-image-container-outer">

          <div id="profile-image-frame">
            <img src={window.bobURL} alt="profile-pic" id="profile-image" />
          </div>
        </div>
      </div>
    </div>
  )
}

export default ProfileDetails;