import React, { Component } from 'react'
import BoardIndexItem from './board_index_item';



class BoardIndex extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    const { boards, pins, user } = this.props;
    const getBoardIndexItems = (
      boards.map(board => {
        const prevPinIds = board.pinIds.slice(0, 6);
        const previewPins = prevPinIds.map((pinId) => {
          return pins[pinId];
        });
        return (
          <BoardIndexItem
            key={board.id}
            board={board}
            pins={previewPins}
            user={user}
          />
        )
      })
    );

    return (
      <div className="board-index">
        {getBoardIndexItems}
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