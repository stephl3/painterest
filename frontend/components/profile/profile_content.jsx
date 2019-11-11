import React from "react";
import { Route, Link, NavLink } from "react-router-dom";

import ProfileSwitches from "./profile_switches";


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
    const { user, openModal, closeModal } = this.props;
    const contentTabs = [
      "BoardIndexContainer",
      "PinIndexContainer"
    ];
    const selectedTab = contentTabs[this.state.selectedSwitch];

    return (
      <div id="profile-content-wrapper">
        <div id="profile-switches-wrapper">
          <ProfileSwitches
            user={user}
            selectedSwitch={this.state.selectedSwitch}
            onSwitchClick={this.selectSwitch}
            tabs={contentTabs}
          />
        </div>
        <div id="profile-tab-wrapper">
          {selectedTab}
        </div>
      </div>
    )
  }
}

export default ProfileContent;