import React from "react";
import { connect } from "react-redux";
import DeleteBoardForm from "./delete_board_form";

import { deletePin } from "../../../actions/pin_actions";
import { openModal, closeModal } from "../../../actions/modal_actions";

const mapStateToProps = (state) => ({
  pinId: (state.entities.pins[state.ui.objectId]).id,
  formTitle: "Are you sure?"
});

const mapDispatchToProps = dispatch => ({
  processForm: (pinId) => dispatch(deletePin(pinId)),
  openEditBoard: (pinId) => dispatch(openModal('edit-pin', pinId)),
  closeModal: () => dispatch(closeModal())
});

export default connect(mapStateToProps, mapDispatchToProps)(DeletePinForm);