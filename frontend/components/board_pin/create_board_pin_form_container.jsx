import React from "react";
import { connect } from "react-redux";
import { withRouter } from "react-router-dom";
import CreatePinForm from "./create_board_pin_form";


import { fetchBoards } from "../../actions/board_actions";
import { createBoardPin } from "../../actions/board_pin_actions";
import { closeModal } from "../../actions/modal_actions";

const mapStateToProps = state => {
  const currentUserId = state.session.id;
  const pin = state.entities.pins[state.ui.objectId];
  const allBoards = Object.values(state.entities.boards);
  const boards = allBoards.filter(board => board.userId === currentUserId);

  return {
    currentUserId,
    pin,
    boards,
  };
};

const mapDispatchToProps = dispatch => ({
  fetchBoards: () => dispatch(fetchBoards()),
  createBoardPin: boardPin => dispatch(createBoardPin(boardPin)),
  closeModal: () => dispatch(closeModal())
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(CreateBoardPinForm));