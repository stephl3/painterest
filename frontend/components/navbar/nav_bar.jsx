import React from "react";
import { Link } from "react-router-dom";

class NavBar extends React.Component {
  constructor(props) {
    super(props);

  }

  render() {
    const { currentUser, logout } = this.props;

    return !currentUser ? (
      null
    ) : (
      <div className="nav-bar">
        <Link to="/" className="header-link">
          <h1>icon</h1>
        </Link>
        {/* <Search /> */}
        <Link to="/following" className="header-link">
          <h1>test</h1>
        </Link>

        <Link to={`/${currentUser.username}`} className="header-link">
          <h1>test</h1>
        </Link>

        <span>messages</span>

        <span>notifs</span>

        <span className="options-dropdown">
          options drop-down
          <button className="dropdown-option" onClick={logout}>Log out</button>
        </span>
      </div>
    )
  }
}

export default NavBar;