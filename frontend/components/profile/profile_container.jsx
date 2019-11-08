import { connect } from "react-redux";
import React from "react";

import { openModal, closeModal } from "../../actions/modal_actions";
import Profile from "./profile";

const mapStateToProps = state => ({
  currentUser: state.entities.users[state.session.id],

});

const mapDispatchToProps = dispatch => ({
  newBoardModal: () => dispatch(openModal("new-board")),
  editBoardModal: () => dispatch(openModal("edit-board")),
  editPinModal: () => dispatch(openModal("edit-pin")),
  closeModal: () => dispatch(closeModal())
});

export default connect(mapStateToProps, mapDispatchToProps)(Profile);