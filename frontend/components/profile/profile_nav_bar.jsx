import React from "react";
import { Link } from "react-router-dom";

class ProfileNavBar extends React.Component {
  constructor(props) {
    super(props);

    this.state ={
      prevScrollPos: window.pageYOffset,
      visible: false
    };

    this.handleScroll = this.handleScroll.bind(this);
  }

  componentDidMount() {
    window.addEventListener("scroll", this.handleScroll);
  }

  componentWillUnmount() {
    window.removeEventListener("scroll", this.handleScroll);
  }

  handleScroll() {
    const { prevScrollPos } = this.state;
    const currentScrollPos = window.pageYOffset;
    const visible = (prevScrollPos < currentScrollPos - 120);

    this.setState({
      prevScrollPos: currentScrollPos,
      visible
    })
  }

  render() {
    const { user, openModal, closeModal } = this.props;
    
    return (
      <div id="profile-nav-bar">
        <div id="buttons-container">
          <div id="buttons">

            <div id="profile-header-expander">
              <div className="profile-header-button" id="create-dropdown">
                <button className="profile-header-link">
                  <div className="profile-icon-container-shadow">
                    <div className="profile-icon-container">
                      <i className="fas fa-plus" id="create-dropdown-icon"></i>
                    </div>
                  </div>
                </button>
                <div id="create-options-container">
                  <div id="create-options">
                    <div className="option-container-shadow">
                      <div className="option-container">
                        <h3 className="option-label" id="create-board">Create board</h3>
                      </div>
                    </div>
                    <div className="option-container-shadow">
                      <div className="option-container">
                        <h3 className="option-label" id="create-pin">Create Pin</h3>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div className="profile-header-button" id="edit-profile">
              <Link to="/settings#profile" className="profile-header-link">
                <div className="profile-icon-container-shadow">
                  <div className="profile-icon-container">
                    <i className="fas fa-pencil-alt" id="edit-profile-icon"></i>
                  </div>
                </div>
              </Link>
            </div>
          </div>
        </div>
        <div id="nav-bar-name-container">
          <div id="nav-bar-name" className={this.state.visible ? "transitionIn" : "transitionOut"}>
            <h3>{user.first_name + " " + user.last_name}</h3>
          </div>
        </div>
      </div>
    )
  }
}

export default ProfileNavBar;