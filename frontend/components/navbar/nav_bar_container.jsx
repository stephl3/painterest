import React from "react";
import { connect } from "react-redux";
import NavBar from "./nav_bar";

import { logout } from "../../actions/session_actions";
import { fetchSingleUser } from "../../actions/user_actions";

const mapStateToProps = state => ({
  currentUser: state.entities.users[state.session.id],
});

const mapDispatchToProps = dispatch => ({
  fetchSingleUser: (id) => dispatch(fetchSingleUser(id)),
  logout: () => dispatch(logout())
});

export default connect(mapStateToProps, mapDispatchToProps)(NavBar);