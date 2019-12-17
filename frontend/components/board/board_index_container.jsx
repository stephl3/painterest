import { connect } from "react-redux";
import React from "react";

// import { fetchSingleUser } from "../../actions/user_actions";
import { fetchBoards, fetchBoard } from "../../actions/board_actions";
import { fetchAllBoardsPins } from "../../actions/board_pin_actions";
import { openModal, closeModal } from "../../actions/modal_actions";
import BoardIndex from "./board_index";

const mapStateToProps = (state, ownProps) => ({
  boards: Object.values(ownProps.boards),
  boardsPins: state.entities.boardsPins,
  pins: state.entities.pins,
  user: state.entities.users[state.session.id],

});

const mapDispatchToProps = dispatch => ({
  // fetchSingleUser: id => dispatch(fetchSingleUser(id)),
  fetchBoards: () => dispatch(fetchBoards()),
  fetchAllBoardsPins: () => dispatch(fetchAllBoardsPins()),
  fetchBoard: (boardId) => dispatch(fetchBoard(boardId)),
  newBoard: () => dispatch(openModal("new-board")),
  editBoard: (id) => dispatch(openModal("edit-board", id)), // UPDATE MODAL ACTION
});

export default connect(mapStateToProps, mapDispatchToProps)(BoardIndex);

