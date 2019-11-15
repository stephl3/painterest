import { connect } from "react-redux";
import React from "react";
import { withRouter } from "react-router-dom";

import { createPin } from "../../../actions/pin_actions";
import CreatePinForm from "./create_pin_form";

const mapStateToProps = state => ({
  currentUser: state.entities.users[state.session.id],
  pin: { "title": "", "description": "", url: "", photo: null },
  errors: state.errors.pin,
  formType: "Create Pin",
});

const mapDispatchToProps = dispatch => ({
  processForm: pin => dispatch(createPin(pin)),
  createBoardPin: boardPin => dispatch(createBoardPin(boardPin)),
  openModal: modal => dispatch(openModal(modal))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(CreatePinForm));

