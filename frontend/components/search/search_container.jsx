import { connect } from "react-redux";
import React from "react";

import { openModal, closeModal } from "../../actions/modal_actions";
import Search from "./search";

const mapStateToProps = state => ({
  currentUser: state.entities.users[state.session.id],

});

const mapDispatchToProps = dispatch => ({
  openSearchModal: () => dispatch(openModal("search")),
  closeModal: () => dispatch(closeModal())
});

export default connect(mapStateToProps, mapDispatchToProps)(Search);