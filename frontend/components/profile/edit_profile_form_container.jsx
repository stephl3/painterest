
import React from "react";
import { connect } from "react-redux";

import EditProfileForm from "./edit_profile_form";
import { update } from "../../actions/session_actions";

const mapStateToProps = state => ({
  currentUser: state.entities.users[state.session.id],
});

const mapDispatchToProps = dispatch => ({
  updateUser: user => dispatch(update(user))
});

export default connect(mapStateToProps, mapDispatchToProps)(EditProfileForm);