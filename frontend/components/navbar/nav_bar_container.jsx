import { connect } from "react-redux";
import React from "react";
import { logout } from "../../actions/session_actions";
import NavBar from "./nav_bar";

const mapStateToProps = state => ({
  currentUser: state.entities.users[state.session.id],
});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
});

export default connect(mapStateToProps, mapDispatchToProps)(NavBar);