import { connect } from "react-redux";
import React from "react";

import { fetchSingleUser } from "../../actions/user_actions";
import { fetchBoards, fetchBoard } from "../../actions/board_actions";
import { fetchAllBoardsPins } from "../../actions/board_pin_actions";
import { openModal, closeModal } from "../../actions/modal_actions";
import BoardIndex from "./board_index";

const mapStateToProps = (state, ownProps) => ({
  boards: ownProps.boards,
  boardsPins: state.entities.boardsPins,
  pins: state.entities.pins,
  currentUser: state.entities.users[state.session.id],
  user: ownProps.user
});

const mapDispatchToProps = dispatch => ({
  fetchSingleUser: userId => dispatch(fetchSingleUser(userId)),
  fetchBoards: () => dispatch(fetchBoards()),
  fetchAllBoardsPins: () => dispatch(fetchAllBoardsPins()),
  fetchBoard: (boardId) => dispatch(fetchBoard(boardId)),
  newBoard: () => dispatch(openModal("new-board")),
  openEditBoard: (boardId) => dispatch(openModal("edit-board", boardId)), // UPDATE MODAL ACTION
});

export default connect(mapStateToProps, mapDispatchToProps)(BoardIndex);

