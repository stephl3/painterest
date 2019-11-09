import React from "react";
import { Link, NavLink } from "react-router-dom";
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
      <div className="nav-bar-background">
        <header className="nav-bar-container">

          <div className="nav-bar-button" id="home">
            <Link to="/" className="nav-bar-link">
              <div className="icon-container-shadow">
                <div className="icon-container">
                  <i className="fab fa-pinterest" id="home-icon"></i>
                </div>
              </div>
            </Link>
          </div>

          <div className="nav-bar-search-container" id="search">
            <SearchContainer />
          </div>

          <div className="right-nav-bar">

            <div className="nav-bar-button" id="following">
              <NavLink to="/following" className="nav-bar-link">
                <div className="icon-container-shadow">
                  <div className="icon-container">
                    <i className="fas fa-user-friends" id="following-icon"></i>
                  </div>
                </div>
              </NavLink>
            </div>

            <div className="nav-bar-button" id="profile">
              <NavLink to={`/${currentUser.username}`} className="nav-bar-link">
                <div className="icon-container-shadow">
                  <div className="icon-container">
                    <div id="profile-icon-frame">
                      <img src={window.bobURL} alt="profile-pic" id="profile-icon"/>
                    </div>
                  </div>
                </div>
              </NavLink>
            </div>

            <div className="nav-bar-spacer" id="spacer"></div>

            <div className="nav-bar-button" id="github">
              <a href="https://github.com/stephl3/painterest" target="_blank" className="nav-bar-link">
                <div className="icon-container-shadow">
                  <div className="icon-container">
                    <i className="fab fa-github-square" id="networking-icon"></i>
                  </div>
                </div>
              </a>
            </div>

            <div className="nav-bar-button" id="linkedin">
              <a href="https://www.linkedin.com/in/mrstephenlee1/" target="_blank" className="nav-bar-link">
                <div className="icon-container-shadow">
                  <div className="icon-container">
                    <i className="fab fa-linkedin" id="networking-icon"></i>
                  </div>
                </div>
              </a>
            </div>

            <div className="nav-bar-button" id="options">
              <a className="nav-bar-link" onClick={logout}>
                <div className="icon-container-shadow">
                  <div className="icon-container">
                    <i className="fas fa-sign-out-alt" id="options-icon"></i>

                  </div>
                </div>
              </a>
            </div>

            {/* come back and turn into drop-down if time
            <div className="nav-bar-drop-down">
              <div className="nav-bar-icon-container">
                <i className="fas fa-ellipsis-h" id="options-icon"></i>
              </div>
                <span className="options-dropdown" hidden>
                  options drop-down
                </span>
            </div> */}
          </div>
        </header>
        <hr id="nav-bar-border"/>
      </div>
    )
  }
}

export default NavBar;