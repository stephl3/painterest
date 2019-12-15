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
import { openModal } from "../../actions/modal_actions";
import PinIndex from "./pin_index";

const mapStateToProps =(state, ownProps) => ({
  pins: ownProps.pins,
  user: ownProps.user,
});

const mapDispatchToProps = dispatch => ({
  fetchPins: () => dispatch(fetchPins()),
  // updatePin: pin => dispatch(updatePin(pin)),
  deleteBoardPin: boardPinId => dispatch(deleteBoardPin(boardPinId)),
  createBoardPin: boardPin => dispatch(createBoardPin(boardPin)),
  editPin: () => dispatch(openModal("edit-pin")),
});

export default connect(mapStateToProps, mapDispatchToProps)(PinIndex);