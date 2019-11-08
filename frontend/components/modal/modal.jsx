import React from "react";
import { openModal, closeModal } from "../../actions/modal_actions";
import { connect } from "react-redux";

import SignupFormContainer from "../session_form/signup_form_container";
import LoginFormContainer from "../session_form/login_form_container";

const Modal = ({ modal, openModal, closeModal }) => {
  if (!modal) {
    return null;
  }

  let component, switchFormValue, altModal, background;
  switch (modal) {
    case "login":
      switchFormValue = "Sign up";
      altModal = "signup"
      component = <LoginFormContainer />;
      background = "session-background"
      break;
    case "signup":
      switchFormValue = "Log in";
      altModal = "login";
      component = <SignupFormContainer />;
      background = "session-background"
      break;
    default:
      return null;
  }

  const switchFormButton = (
    <button className="switch-form-button" onClick={() => openModal(altModal)}>
      <div className="switch-form-value">
        {switchFormValue}
      </div>
    </button>
  )

  return (
    <div id="modal-background" className={background}>
      <div className="modal-child" onClick={e => e.stopPropagation()}>
        {component}
      </div>
      <div className="modal-child-two" onClick={e => e.stopPropagation()}>
        {switchFormButton}
      </div>
    </div>
  )
};

const mapStateToProps = state => ({
  modal: state.ui.modal
})

const mapDispatchToProps = dispatch => ({
  openModal: modal => dispatch(openModal(modal)),
  closeModal: () => dispatch(closeModal())
})

export default connect(mapStateToProps, mapDispatchToProps)(Modal);