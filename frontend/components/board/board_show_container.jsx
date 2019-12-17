import React from "react";
import { connect } from "react-redux";
import { withRouter } from "react-router-dom";

import { fetchBoards, fetchBoard } from "../../actions/board_actions";
import { openModal, closeModal } from "../../actions/modal_actions";
import BoardShow from './board_show';

const mapStateToProps = (state, ownProps) => {
  const board = Board.all;
  debugger;
  return {
    currentUser: state.entities.users[state.session.id],
    board: Object.values(state.entities.boards).find(board => {
      return board.title === ownProps.match.params.boardTitle
    }),
    pins: Object.values(state.entities.pins).filter(pin => {
      board.pinIds.includes(pin.id)
    }),
    errors: state.errors.board,
  }
};

const mapDispatchToProps = dispatch => ({
  fetchBoards: () => dispatch(fetchBoards()),
  fetchBoard: boardId => dispatch(fetchBoard(boardId)),
  editBoard: () => dispatch(openModal('edit-board')),
  closeModal: () => dispatch(closeModal())
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(BoardShow));