import React from "react";
import { Route, Link, NavLink } from "react-router-dom";

const ProfileSwitches = ({ user, selectedSwitch, onSwitchClick, tabs }) => {
  const switches = tabs.map((tab, idx) => {
    let selected = (idx === selectedSwitch ? "active" : "");
    let url, label;
    (idx === 0) ? (
      url = "boards", label = "Boards"
    ) : (
      url = "pins", label = "Pins"
    );

    return (
      <NavLink
        key={idx}
        to={`/${user.username}/${url}`}
        className={`profile-switch-link ${selected}`}
        onClick={() => onSwitchClick(idx)}
      >
        <div className="profile-switch-link-label">{label}</div>
      </NavLink>
    )
  });

  return (
    <div id="profile-switches-container">
      <div id="profile-switches">
        <div id="profile-switch-links-container">
          <div id="profile-switch-links">
            {switches}
          </div>
        </div>
      </div>
    </div>
  )
}

export default ProfileSwitches;