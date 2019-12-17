import React from "react";
import { connect } from "react-redux";

import { deleteBoard } from "../../../actions/board_actions";
import { openModal, closeModal } from "../../../actions/modal_actions";
import DeleteBoardForm from "./delete_board_form";

const mapStateToProps = (state) => ({
  boardId: (state.entities.boards[state.ui.objectId]).id,
  formTitle: "Are you sure?"
});

const mapDispatchToProps = dispatch => ({
  processForm: (boardId) => dispatch(deleteBoard(boardId)),
  openEditBoard: (boardId) => dispatch(openModal('edit-board', boardId)),
  closeModal: () => dispatch(closeModal())
});

export default connect(mapStateToProps, mapDispatchToProps)(DeleteBoardForm);