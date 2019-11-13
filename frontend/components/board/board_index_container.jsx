import { connect } from "react-redux";
import React from "react";

import { createBoard } from "../../actions/board_actions";
import { openModal, closeModal } from "../../actions/modal_actions";
import BoardForm from "./board_form";

const mapStateToProps = state => ({
  board: { "title": "", "secret": false },
});

const mapDispatchToProps = dispatch => ({
  fetchBoards: () => dispatch(fetchBoards()),
  editBoard: () => dispatch(openModal("edit-board"))
});

export default connect(mapStateToProps, mapDispatchToProps)(BoardForm);

