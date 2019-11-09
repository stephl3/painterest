import React from "react";
import { Link, NavLink } from "react-router-dom";

class ProfileNavBar extends React.Component {
  constructor(props) {
    super(props);

    this.state ={
      prevScrollPos: window.pageYOffset,
      fadeInName: false,
      showCreateOptions: false
    };

    this.handleScroll = this.handleScroll.bind(this);
    this.toggleShow = this.toggleShow.bind(this);
    this.hide = this.hide.bind(this);
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
    const fadeInName = (prevScrollPos < currentScrollPos - 120);

    this.setState({
      fadeInName
    });
  }

  toggleShow() {
    this.setState({ showCreateOptions: !this.state.showCreateOptions });
  }

  hide(e) {
    if (e && e.relatedTarget) {
      e.relatedTarget.click();
    }
    this.setState({ showCreateOptions: false });
  }

  render() {
    const { user, openModal, closeModal } = this.props;
    // debugger;
    return (
      <div id="profile-nav-bar">
        <div id="buttons-container">
          <div id="buttons">

            <div id="profile-header-expander">
              <div className="profile-header-button" id="create-dropdown">
                <button
                  className="profile-header-link"
                  onClick={this.toggleShow}
                  onBlur={this.hide}
                >
                  <div className="profile-icon-container-shadow">
                    <div className="profile-icon-container">
                      <i className="fas fa-plus" id="create-dropdown-icon"></i>
                    </div>
                  </div>
                </button>
                <div id="create-options-container" style={{
                  visibility: this.state.showCreateOptions ?
                  "visible" :
                  "hidden"
                }}>
                  <div id="create-options">
                    <div id="create-board-button" onClick={() => openModal("create-board")}>
                      <div className="option-container-shadow">
                        <div className="option-container">
                          <h3 className="option-label" id="create-board">Create board</h3>
                        </div>
                      </div>
                    </div>
                    
                    <div id="create-pin-button">
                      <Link to="/pin-builder">
                        <div className="option-container-shadow">
                          <div className="option-container">
                            <h3 className="option-label" id="create-pin">Create Pin</h3>
                          </div>
                        </div>
                      </Link>
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
          <div id="nav-bar-name" className={this.state.fadeInName ? "transitionIn" : "transitionOut"}>
            <h3>{user.firstName + " " + user.lastName}</h3>
          </div>
        </div>
      </div>
    )
  }
}

export default ProfileNavBar;