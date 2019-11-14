import React from "react";
import { connect } from "react-redux";

import { fetchBoard, updateBoard, deleteBoard } from "../../../actions/board_actions";
import { closeModal } from "../../../actions/modal_actions";
import EditBoardForm from "./edit_board_form";

const mapStateToProps = (state, ownProps) => ({
  board: state.entities.boards[ownProps.match.params.boardId],
  errors: state.errors.board,
  formType: "Edit your board"
});

const mapDispatchToProps = dispatch => ({
  fetchBoard: boardId => dispatch(fetchBoard(boardId)),
  processForm: board => dispatch(updateBoard(board)),
  deleteBoard: boardId => dispatch(deleteBoard(boardId)),
  closeModal: () => dispatch(closeModal())
});

export default connect(mapStateToProps, mapDispatchToProps)(EditBoardForm);