import { connect } from "react-redux";
import React from "react";

import { openModal, closeModal } from "../../actions/modal_actions";
import ProfileShow from "./profile_show";

const mapStateToProps = state => ({
  currentUser: state.entities.users[state.session.id],

});

const mapDispatchToProps = dispatch => ({
  openModal: modal => dispatch(openModal(modal)),
  closeModal: () => dispatch(closeModal())
});

export default connect(mapStateToProps, mapDispatchToProps)(ProfileShow);