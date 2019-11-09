import React from "react";
import { Link, NavLink } from "react-router-dom";

const ProfileSwitches = ({ user }) => {
  return (
    <div id="profile-switches-background">
      <div id="profile-switches">
        <div id="profile-switch-links-container">
          <div id="profile-switch-links">
            <NavLink to={`/${user.username}/boards`} className="profile-switch-link">
              <div className="profile-switch-link-label">Boards</div>
            </NavLink>
            <NavLink to={`/${user.username}/pins`} className="profile-switch-link">
              <div className="profile-switch-link-label">Pins</div>
            </NavLink>
          </div>
        </div>
      </div>
    </div>
  )
}

export default ProfileSwitches;