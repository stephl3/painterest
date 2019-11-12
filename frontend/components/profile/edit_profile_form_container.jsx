
import React from "react";
import { connect } from "react-redux";

import EditProfileForm from "./edit_profile_form";

const mapStateToProps = state => ({
  currentUser: state.entities.users[state.session.id],
});

const mapDispatchToProps = dispatch => ({
  
});

export default connect(mapStateToProps, mapDispatchToProps)(EditProfileForm);