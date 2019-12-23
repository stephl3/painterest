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

const mapStateToProps =(state, ownProps) => {
  const pins = (typeof ownProps.pins !== 'undefined') ? (
    Object.values(ownProps.pins)
  ) : (
    Object.values(state.entities.pins)
  );
  // review this to ensure correct pins

  return {
    pins,
    user: state.entities.users[state.session.id],
    loading: state.ui.loading,
    parent: ownProps.parent
  };
};

const mapDispatchToProps = dispatch => ({
  fetchPins: () => dispatch(fetchPins()),
  openEditPin: pinId => dispatch(openModal("edit-pin", pinId)),
  openNewBoardPin: pinId => dispatch(openModal("new-board-pin", pinId)),
  createBoardPin: boardPin => dispatch(createBoardPin(boardPin)),
  startLoading: () => dispatch(startLoading()),
  stopLoading: () => dispatch(stopLoading()),
});

export default connect(mapStateToProps, mapDispatchToProps)(PinIndex);