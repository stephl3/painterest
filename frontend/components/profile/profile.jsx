import React from "react";
import { Link } from "react-router-dom";

import ProfileDetails from "./profile_details";
import ProfileContent from "./profile_content";

class Profile extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const { currentUser, newBoardModal, editBoardModal, editPinModal, closeModal } = this.props;

    return (
      <div className="profile-background">
        <div className="profile-container">
          <div className="profile-header">
            <div className="profile-buttons">
              
              <Link></Link>
            </div>
            <div className="profile-details">
              <ProfileDetails user={currentUser}/>
            </div>
          </div>

          <div className="profile-content">
            <div className="profile-content-container">
              <ProfileContent />
            </div>
          </div>
        </div>
      </div>
    )
  }
};

export default Profile;