import React, { Component } from 'react'

import PinIndexContainer from "../pin/pin_index_container";

export default class BoardShow extends Component {
  constructor(props) {
    super(props);
    // this.state = {
    //   board: null
    // }
  }

  UNSAFE_componentWillMount() {
    this.props.fetchBoards();
  }

  componentDidMount() {
    const { boardTitle } = this.props.match.params;
    debugger;
    const { id } = this.props.location.state;
    this.props.fetchBoard(this.props.location.state.id);
  }

  render() {
    const { userPhoto } = this.props.currentUser;
    // const { title, description, secret } = this.props.board;
    // const secretIcon = (secret) ? (
    //   <div className="board-show visibility">
    //     <i className="fas fa-lock board-show" id="lock-icon"></i>
    //   </div>
    // ) : (
    //     null
    // );

    return (
      <div className="board-show container">
        <div className="board-show header">
          <div className="board-show navbar">
            <div className="board-show buttons">
              <button className="board-show button">
                <i className="fas fa-plus board-show" id="create-pin-icon"></i>
              </button>
              <button className="board-show button">
                <i className="fas fa-pencil-alt board-show" id="edit-board-icon"></i>
              </button>
            </div>
            <div className="board-show profile-link">
              <button className="board-show profile-button">
                <img src={userPhoto}/>
              </button>
            </div>
          </div>
          <div className="board-show info">
            <div className="board-show main-info">
              <div className="board-show title">
                {/* {title} */}
              </div>
              <div className="board-show stats">
                {/* {secretIcon} */}
                <div className="board-show pin-count">
                  252 pins
                </div>
                <div className="board-show follower-count">
                  {" · "} 7 followers
                </div>
              </div>
            </div>
            <div className="board-show description">
              {/* {description} */}
            </div>
          </div>
        </div>
        <div className="board-show pin-feed">
          {/* <PinIndexContainer pins={pins} /> */}
        </div>
      </div>
    )
  }
}

// BoardShow.defaultProps = {
//   board: {
//     title: 'boardman',
//     description: 'boardman gets paid',
//     secret: true
//   }
// }