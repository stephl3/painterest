import React, { Component } from 'react'
import BoardIndexItem from './board_index_item';



class BoardIndex extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    const { boards, user } = this.props;
    const getBoardIndexItems = (
      boards.map(board => (
        <BoardIndexItem
          key={board.id}
          board={board}
          pins={board}
          user={user}
        />
      ))
    );

    return (
      <div className="board-index">
        {getBoardIndexItems}
      </div>
    )
  }
}


export default BoardIndex;