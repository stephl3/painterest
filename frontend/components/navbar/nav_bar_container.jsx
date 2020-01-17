import React from "react";
import { connect } from "react-redux";
import NavBar from "./nav_bar";

import { logout } from "../../actions/session_actions";
import { fetchAllUsers, fetchSingleUser } from "../../actions/user_actions";

const mapStateToProps = state => ({
  currentUser: state.entities.users[state.session.id],
});

const mapDispatchToProps = dispatch => ({
  fetchAllUsers: () => dispatch(fetchAllUsers()),
  logout: () => dispatch(logout())
});

export default connect(mapStateToProps, mapDispatchToProps)(NavBar);