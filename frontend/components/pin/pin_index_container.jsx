import { connect } from "react-redux";
import PinIndex from "./pin_index";

import {
  fetchPins,
  updatePin
} from "../../actions/pin_actions";
import { openModal } from "../../actions/modal_actions";

const mapStateToProps =(state, ownProps) => {
  // const pins = (ownProps.pins.length > 0) ? (
  //   ownProps.pins
  // ) : (
  //   Object.values(state.entities.pins)
  // );
  // review this to ensure correct pins

  return {
    page: ownProps.page,
    pins: ownProps.pins,
    currentUserId: state.session.id,
    parent: ownProps.parent
  };
};

const mapDispatchToProps = dispatch => ({
  fetchPins: () => dispatch(fetchPins()),
  openEditPin: pinId => dispatch(openModal("edit-pin", pinId)),
  openNewBoardPin: pinId => dispatch(openModal("new-board-pin", pinId))
});

export default connect(mapStateToProps, mapDispatchToProps)(PinIndex);