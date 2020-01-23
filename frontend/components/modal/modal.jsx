import React from "react";
import { openModal, closeModal } from "../../actions/modal_actions";
import { connect } from "react-redux";

import SignupFormContainer from "../session/signup_form_container";
import LoginFormContainer from "../session/login_form_container";
import SearchContainer from "../search/search_container";
import CreateBoardFormContainer from "../board/form/create_board_form_container";
import EditBoardFormContainer from "../board/form/edit_board_form_container";
import DeleteBoardFormContainer from "../board/form/delete_board_form_container";
import EditPinFormContainer from "../pin/form/edit_pin_form_container";
import DeletePinFormContainer from "../pin/form/delete_pin_form_container";
import CreateBoardPinFormContainer from "../board_pin/create_board_pin_form_container";


const Modal = ({ modal, openModal, closeModal }) => {
  if (!modal) return null;
  
  let component, switchFormValue, altModal, clickBackground;
  switch (modal) {
    case "login":
      switchFormValue = "Sign up";
      altModal = "signup"
      component = <LoginFormContainer />;
      clickBackground = null;
      break;
    case "signup":
      switchFormValue = "Log in";
      altModal = "login";
      component = <SignupFormContainer />;
      clickBackground = null;
      break;
    // case "search":
    //   component = <SearchContainer />;
    //   clickBackground = closeModal;
    //   break;
    case "new-board":
      component = <CreateBoardFormContainer />;
      clickBackground = closeModal;
      break;
    case "edit-board":
      component = <EditBoardFormContainer />;
      clickBackground = closeModal;
      break;
    case "delete-board":
      component = <DeleteBoardFormContainer />;
      clickBackground = null;
      break;
    case "edit-pin":
      component = <EditPinFormContainer />;
      clickBackground = closeModal;
      break;
    case "delete-pin":
      component = <DeletePinFormContainer />;
      clickBackground = () => openModal('edit-pin');
      break;
    case "new-board-pin":
      component = <CreateBoardPinFormContainer />;
      clickBackground = closeModal;
      break;
    default:
      return null;
  };

  const switchFormButton = (switchFormValue) ? (
    <button className="switch-form-button" onClick={() => openModal(altModal)}>
      <div className="switch-form-value">
        {switchFormValue}
      </div>
    </button>
  ) : null;

  return (
    <div className="modal-container">
      <div className="modal-background" id={modal} onClick={clickBackground}>
        <div className="modal-child" id={`${modal}-child`} onClick={e => e.stopPropagation()}>
          {component}
        </div>
        <div className="modal-child-two" onClick={e => e.stopPropagation()}>
          {switchFormButton}
        </div>
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