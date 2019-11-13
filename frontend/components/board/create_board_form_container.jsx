import { connect } from "react-redux";
import React from "react";

import { createBoard } from "../../actions/board_actions";
import { openModal, closeModal } from "../../actions/modal_actions";
import BoardForm from "./board_form";

const mapStateToProps = state => ({
  board: {"title": "", "secret": false},
  errors: state.errors.board,
  formType: "Create board",
});

const mapDispatchToProps = dispatch => ({
  processForm: board => dispatch(createBoard(board)),
  closeModal: () => dispatch(closeModal())
});

export default connect(mapStateToProps, mapDispatchToProps)(BoardForm);

