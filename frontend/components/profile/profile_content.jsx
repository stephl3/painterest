import React from "react";
import { Route, Link, NavLink } from "react-router-dom";

import ProfileSwitches from "./profile_switches";
import BoardIndexContainer from "../board/board_index_container";
import PinIndexContainer from "../pin/pin_index_container";

class ProfileContent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedSwitch: 0
    };

    this.selectSwitch = this.selectSwitch.bind(this);
  }

  selectSwitch(num) {
    this.setState({ selectedSwitch: num });
  }

  render() {
    const { user, boards, pins, openModal, closeModal } = this.props;
    const contentTabs = [
      <BoardIndexContainer boards={boards} />,
      <PinIndexContainer pins={pins} />
    ];
    const selectedTab = contentTabs[this.state.selectedSwitch];
    const pinCount = (this.state.selectedSwitch === 1) ? (
      <div className="profile-show pin-count-container">
        <div className="profile-show pin-count">
          <span className="profile-show number">13 </span>Pins
        </div>
      </div>
    ) : null;

    return (
      <div id="profile-content">
        <div id="profile-switches-wrapper">
          <ProfileSwitches
            user={user}
            selectedSwitch={this.state.selectedSwitch}
            onSwitchClick={this.selectSwitch}
            tabs={contentTabs}
          />
          {pinCount}
        </div>
        <div id="profile-tab-wrapper">
          {selectedTab}
        </div>
      </div>
    )
  }
}

export default ProfileContent;