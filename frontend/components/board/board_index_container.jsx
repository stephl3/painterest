import { connect } from "react-redux";
import React from "react";

import { fetchBoards,  } from "../../actions/board_actions";
import { fetchAllBoardsPins } from "../../actions/board_pin_actions";
import { openModal, closeModal } from "../../actions/modal_actions";
import BoardIndex from "./board_index";

const mapStateToProps = (state, ownProps) => ({
  boards: ownProps.boards,
  user: ownProps.user,
  pinnings: state.entities.boardsPins,
  pins: state.entities.pins,
  
});

const mapDispatchToProps = dispatch => ({
  fetchBoards: () => dispatch(fetchBoards()),
  fetchAllBoardsPins: () => dispatch(fetchAllBoardsPins()),
  newBoard: () => dispatch(openModal("new-board")),
  editBoard: () => dispatch(openModal("edit-board")),

});

export default connect(mapStateToProps, mapDispatchToProps)(BoardIndex);

