import React, { Component } from 'react';
import BoardIndexItem from './board_index_item';


class BoardIndex extends Component {
  constructor(props) {
    super(props);
    this.openEditBoard = this.openEditBoard.bind(this);
  }

  openEditBoard(e, boardId) {
    e.preventDefault();
    this.props.openEditBoard(boardId);
  }

  render() {
    const { boards, pins, currentUser, user, newBoard } = this.props;
    const boardIndexItems = (boards.length > 0) ? (
      boards.map(board => {
        const prevPinIds = (board.pinIds) ? (
          board.pinIds.slice(0, 6)
        ) : (
          board.pinIds
        );
        const previewPins = prevPinIds.map((pinId) => {
          return pins[pinId];
        });
        return (
          <BoardIndexItem
            key={board.id}
            board={board}
            pins={previewPins}
            currentUser={currentUser}
            user={user}
            openEditBoard={this.openEditBoard}
          />
        )
      })
    ) : (
      null // swap with add button using newBoard
    );

    return (
      <div className="board-index">
        {boardIndexItems}
        <div className="board-index-item filler"></div>
        <div className="board-index-item filler"></div>
        <div className="board-index-item filler"></div>
        <div className="board-index-item filler"></div>
        <div className="board-index-item filler"></div>
        <div className="board-index-item filler"></div>
        <div className="board-index-item filler"></div>
        <div className="board-index-item filler"></div>
        <div className="board-index-item filler"></div>
        <div className="board-index-item filler"></div>
        <div className="board-index-item filler"></div>
        <div className="board-index-item filler"></div>
      </div>
    )
  }
}


export default BoardIndex;