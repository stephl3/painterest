import React from "react";
import { Route, Link, NavLink } from "react-router-dom";

const ProfileSwitches = ({ user, selectedSwitch, onSwitchClick, tabs }) => {
  const switches = tabs.map((tab, idx) => {
    const label = (idx === 0) ? "Boards" : "Pins";

    return (idx === 0) ? (
      <NavLink
        key={idx}
        to={`/${user.username}/${label.toLowerCase()}`}
        isActive={() => {
          if (!location.hash.includes("/pins")) {
            return true;
          }
        }}
        className={`profile-switch-link`}
        activeStyle={{ backgroundColor: '#efefef', color: '#333' }}
        onClick={() => onSwitchClick(idx)}
      >
        <div className="profile-switch-link-label">{label}</div>
      </NavLink>
    ) : (
        <NavLink
          key={idx}
          to={`/${user.username}/${label.toLowerCase()}`}
          className={`profile-switch-link`}
          activeStyle={{ backgroundColor: '#efefef', color: '#333' }}
          onClick={() => onSwitchClick(idx)}
        >
          <div className="profile-switch-link-label">{label}</div>
        </NavLink>
    );
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