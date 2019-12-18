import { connect } from "react-redux";
import React from "react";

import {
  fetchPins,
  updatePin
} from "../../actions/pin_actions";
import {
  createBoardPin,
  deleteBoardPin
} from "../../actions/board_pin_actions";
import { startLoading, stopLoading } from "../../actions/loading_actions";
import { openModal } from "../../actions/modal_actions";
import PinIndex from "./pin_index";

const mapStateToProps =(state, ownProps) => ({
  pins: Object.values(state.entities.pins),
  // pins: Object.values(ownProps.pins),
  user: state.entities.users[state.session.id],
  loading: state.ui.loading
});

const mapDispatchToProps = dispatch => ({
  fetchPins: () => dispatch(fetchPins()),
  // updatePin: pin => dispatch(updatePin(pin)),
  deleteBoardPin: boardPinId => dispatch(deleteBoardPin(boardPinId)),
  createBoardPin: boardPin => dispatch(createBoardPin(boardPin)),
  startLoading: () => dispatch(startLoading()),
  stopLoading: () => dispatch(stopLoading()),
  editPin: () => dispatch(openModal("edit-pin")),
});

export default connect(mapStateToProps, mapDispatchToProps)(PinIndex);