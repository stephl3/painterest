
import React from "react";
import { connect } from "react-redux";

import EditProfileForm from "./edit_profile_form";
import { update } from "../../actions/session_actions";

const mapStateToProps = state => ({
  errors: state.errors.user,
  currentUser: state.entities.users[state.session.id]
});

const mapDispatchToProps = dispatch => ({
  updateUser: (user, id) => dispatch(update(user, id))
});

export default connect(mapStateToProps, mapDispatchToProps)(EditProfileForm);