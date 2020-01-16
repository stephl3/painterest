import React from "react";
import { connect } from "react-redux";
import { withRouter } from "react-router-dom";

import { fetchSingleUser } from "../../actions/user_actions";
// import { fetchBoards, fetchBoard } from "../../actions/board_actions";
import { openModal, closeModal } from "../../actions/modal_actions";
import BoardShow from './board_show';

const mapStateToProps = (state, ownProps) => {
  const board = Object.values(state.entities.boards).find(board => 
    board.title === ownProps.match.params.boardTitle
  ) || {board : { id: 0}};

  return {
    currentUser: state.entities.users[state.session.id],
    board: state.entities.boards[board.id],
    pins: state.entities.pins,
    boardsPins: Object.values(state.entities.boardsPins),
    errors: state.errors.board,
  }
};

const mapDispatchToProps = dispatch => ({
  fetchSingleUser: id => dispatch(fetchSingleUser(id)),
  // fetchBoards: () => dispatch(fetchBoards()),
  // fetchBoard: boardId => dispatch(fetchBoard(boardId)),
  openEditBoard: boardId => dispatch(openModal('edit-board', boardId)),
  closeModal: () => dispatch(closeModal())
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(BoardShow));