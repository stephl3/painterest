import { connect } from "react-redux";
import React from "react";

import { fetchSingleUser } from "../../actions/user_actions";
import { openModal, closeModal } from "../../actions/modal_actions";
import ProfileShow from "./profile_show";

const mapStateToProps = state => ({
  currentUser: state.entities.users[state.session.id],
  boards: state.entities.boards,
  boardsPins: state.entities.boardsPins,
  pins: Object.values(state.entities.pins),
});

const mapDispatchToProps = dispatch => ({
  fetchSingleUser: id => dispatch(fetchSingleUser(id)),
  openModal: modal => dispatch(openModal(modal)),
  closeModal: () => dispatch(closeModal())
});

export default connect(mapStateToProps, mapDispatchToProps)(ProfileShow);