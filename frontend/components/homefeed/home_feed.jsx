import React from "react";
import NavBarContainer from "../navbar/nav_bar_container";

class HomeFeed extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const { currentUser, logout, openModal } = this.props;
    
    /* only load a return if current user is logged in */
    return (
      <div className="home-feed-container">
        {/* <div className="nav-bar-component">
          <NavBarContainer />
        </div> */}
        {/* <div>
          <PinIndexContainer
            currentUser={currentUser}
            logout={logout}
          />
        </div> */}
      </div>
    )
  }
};

export default HomeFeed;