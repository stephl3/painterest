import { connect } from "react-redux";
import React from "react";

import { openModal, closeModal } from "../../actions/modal_actions";
import HomeFeed from "./home_feed";

const mapStateToProps = state => ({
  currentUser: state.entities.users[state.session.id],

});

const mapDispatchToProps = dispatch => ({
  
});

export default connect(mapStateToProps, mapDispatchToProps)(HomeFeed);