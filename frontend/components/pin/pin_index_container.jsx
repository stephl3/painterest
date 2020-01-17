import { connect } from "react-redux";
import PinIndex from "./pin_index";

import {
  fetchPins,
  updatePin
} from "../../actions/pin_actions";
import { openModal } from "../../actions/modal_actions";

const mapStateToProps =(state, ownProps) => {

  return {
    page: ownProps.page,
    pins: ownProps.pins,
    currentUserId: state.session.id,
    user: state.entities.users[state.session.id]
  };
};

const mapDispatchToProps = dispatch => ({
  fetchPins: () => dispatch(fetchPins()),
  openEditPin: pinId => dispatch(openModal("edit-pin", pinId)),
  openNewBoardPin: pinId => dispatch(openModal("new-board-pin", pinId))
});

export default connect(mapStateToProps, mapDispatchToProps)(PinIndex);