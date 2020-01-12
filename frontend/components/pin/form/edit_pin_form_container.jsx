import { connect } from "react-redux";
import React from "react";
import { withRouter } from "react-router-dom";

import { updatePin } from "../../../actions/pin_actions";
import EditPinForm from "./edit_pin_form";

const mapStateToProps = state => ({
  currentUser: state.entities.users[state.session.id],
  pin: { "title": "", "description": "", url: "", photo: null },
  errors: state.errors.pin,
  formType: "Edit this Pin",
});

const mapDispatchToProps = dispatch => ({
  processForm: pin => dispatch(updatePin(pin)),
  createBoardPin: boardPin => dispatch(createBoardPin(boardPin)),
  openDeletePin: pinId => dispatch(openModal('delete-pin'))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(EditPinForm));

