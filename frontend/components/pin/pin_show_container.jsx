import { connect } from "react-redux";
import React from "react";

import { updatePin } from "../../../actions/pin_actions";
import { createBoardPin } from "../../actions/board_pin_actions";
import PinShow from "./pin_show";

const mapStateToProps = (state, ownProps) => ({
  pin: state.entities.pins[ownProps.match.params.pinId],
  users: state.entities.users
});

const mapDispatchToProps = dispatch => ({
  updatePin: pin => dispatch(updatePin(pin)),
  createBoardPin: boardPin => dispatch(createBoardPin(boardPin)),
  openModal: modal => dispatch(openModal(modal))
});

export default connect(mapStateToProps, mapDispatchToProps)(PinShow);

