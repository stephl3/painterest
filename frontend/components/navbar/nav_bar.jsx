import React from "react";
import { Link } from "react-router-dom";
import SearchContainer from "../search/search_container";

class NavBar extends React.Component {
  constructor(props) {
    super(props);

  }

  render() {
    const { currentUser, logout } = this.props;

    return !currentUser ? (
      null
    ) : (
      <header className="nav-bar-background">
        <div className="nav-bar-container">
          <div className="left-nav-bar">
            <div>
            </div>
            <div className="nav-bar-logo">
              <Link to="/" className="home-link">
                <img className="home-icon" src="/painterest_icon.png" alt="painterest icon"/>
              </Link>
            </div>
            <div className="nav-bar-search">
              <SearchContainer />
            </div>
          </div>
          <div className="right-nav-bar">
            <div className="nav-bar-following">
              <Link to="/following" className="header-link">
                <img src="/construct_icon.png"/>
                {/* want this one... how to add i tag...?!
                <i className="fas fa-user-friends"></i>
                this one is funny hoho
                <i className="fas fa-user-injured" id="icon" height=""></i> */}
              </Link>
            </div>
            <div className="nav-bar-profile">
              <Link to={`/${currentUser.username}`} className="header-link">
                <div className="user-icon"/>
              </Link>
            </div>
            <div className="nav-bar-spacer"></div>
            <div className="nav-bar-icon">
              <a href="https://github.com/stephl3/painterest" className="nav-bar-icon-link">
                <img src="/github_icon.svg"/>
              </a>
            </div>
            <div className="nav-bar-icon">
              <a href="https://www.linkedin.com/in/mrstephenlee1/" className="nav-bar-icon-link">
                <img src="/linkedin_icon.svg"/>
              </a>
            </div>
            <div className="nav-bar-icon">
              <a className="nav-bar-icon-link" onClick={logout}>
                <img src="logout_icon.png"/>
              </a>
            </div>
            {/* come back and turn into drop-down if time
            <div className="nav-bar-drop-down">
              <div className="nav-bar-icon-container">
                <i className="fas fa-ellipsis-h"></i>
              </div>
                <span className="options-dropdown" hidden>
                  options drop-down
                </span>
            </div> */}
          </div>
        </div>
      </header>
    )
  }
}

export default NavBar;