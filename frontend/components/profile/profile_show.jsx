import React from "react";
import { Link } from "react-router-dom";

import ProfileHeader from "./profile_header";
import ProfileContent from "./profile_content";

class ProfileShow extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.fetchSingleUser(this.props.currentUser.id);
  }
  
  componentDidUpdate(prevProps) {
    const boards = JSON.stringify(this.props.boards);
    const prevBoards = JSON.stringify(prevProps.boards);
    if (boards !== prevBoards) {
      // this.props.fetchSingleUser(this.props.currentUser.id);
    }
  }
  // componentWillUnmount() {
  //   this.props.fetchSingleUser(this.props.currentUser.id);
  // }

  render() {
    const { currentUser, boards, pins, openModal, closeModal } = this.props;
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
                boards={boards}
                pins={pins}
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