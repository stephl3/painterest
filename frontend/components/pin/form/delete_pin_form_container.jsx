import React from "react";
import { connect } from "react-redux";
import DeletePinForm from "./delete_pin_form";

import { deletePin } from "../../../actions/pin_actions";
import { openModal, closeModal } from "../../../actions/modal_actions";

const mapStateToProps = (state) => ({
  pinId: state.ui.objectId,
  formTitle: "Are you sure?"
});

const mapDispatchToProps = dispatch => ({
  processForm: (pinId) => dispatch(deletePin(pinId)),
  openEditPin: (pinId) => dispatch(openModal('edit-pin', pinId)),
  closeModal: () => dispatch(closeModal())
});

export default connect(mapStateToProps, mapDispatchToProps)(DeletePinForm);