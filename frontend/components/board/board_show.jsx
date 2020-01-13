import React, { Component } from 'react'

import BoardShowNavBar from './board_show_nav_bar';
import PinIndexContainer from "../pin/pin_index_container";

export default class BoardShow extends Component {
  constructor(props) {
    super(props);
    this.state = this.props.board || JSON.parse(localStorage.getItem("board"));

    localStorage.setItem("board", JSON.stringify(this.state));
    this.openEditBoard = this.openEditBoard.bind(this);
  }

  componentDidMount() {
    // debugger;
    this.props.fetchBoard(this.state.id);
  }

  componentDidUpdate() {}

  openEditBoard(e) {
    e.preventDefault();
    this.props.openEditBoard(this.state.id)
  }

  render() {
    const { currentUser, board, pins } = this.props;
    const secretIcon = (this.state.secret) ? (
      <div className="board-show visibility">
        <i className="fas fa-lock board-show" id="lock-icon"></i>
      </div>
    ) : (
        null
    );
    // debugger;
    return (
      <div className="board-show container">
        <div className="board-show header">
          <div className="board-show navbar-container">
            <BoardShowNavBar
              openEditBoard={this.openEditBoard}
              board={board} 
              user={currentUser}
            />
          </div>
          <div className="board-show info">
            <div className="board-show main-info">
              <div className="board-show title">
                {this.state.title}
              </div>
              <div className="board-show stats">
                {secretIcon}
                <div className="board-show count pin">
                  252 pins
                </div>
                <div className="board-show count follower">
                  ·  7 followers
                </div>
              </div>
            </div>
            <div className="board-show description">
              {this.state.description}
            </div>
          </div>
        </div>
        <div className="board-show pin-feed">
          {/* <div className="board-show filler"></div>
          <div className="board-show filler"></div>
          <div className="board-show filler"></div>
          <div className="board-show filler"></div>
          <div className="board-show filler"></div>
          <div className="board-show filler"></div> */}
          <PinIndexContainer
            pins={pins}
            page="profile"
          />
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