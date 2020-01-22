import React from "react";
import { Link, NavLink } from "react-router-dom";

const ProfileDetails = ({ user }) => {
  const name = (user.firstName) ? (user.firstName + " " + user.lastName) : user.username;
  const personalInfo = (user.location && user.description) ? (
    <div id="profile-personal">
      <h4>{user.location} · {user.description}</h4>
    </div>
  ) : null;
  const profilePhoto = (user.photo) ? (
    <img src={user.photo} alt="profile-pic" id="profile-photo" />
  ) : (
    <i className="fas fa-user-circle" id="profile-photo" style={{ "color": "#8e8e8e" }}></i>
  );

  // debugger;
  return (
    <div id="profile-details-background">
      <div id="profile-details">
        <div id="profile-basics-container">
          <div id="profile-basics">
            <div id="profile-name-container">
              <div id="profile-name">
                {name}
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
              {personalInfo}
            </div>
          </div>
        </div>
        <div id="profile-image-container-outer">
          <div id="profile-image-frame">
            {profilePhoto}
          </div>
        </div>
      </div>
    </div>
  )
}

export default ProfileDetails;