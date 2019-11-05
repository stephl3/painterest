import { OPEN_MODAL, CLOSE_MODAL } from '../actions/modal_actions';

// default null; set to string representing which component to display
const ModalReducer = (oldState = null, action) => {
  switch (action.type) {
    case OPEN_MODAL:
      return action.modal;
    case CLOSE_MODAL:
      return null;
    default:
      return oldState;
  }
};

export default ModalReducer;