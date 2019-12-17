import { OPEN_MODAL, CLOSE_MODAL } from '../actions/modal_actions';

const ModalObjectReducer = (oldState = null, action) => {
  switch (action.type) {
    case OPEN_MODAL:
      return action.objectId || oldState;
    case CLOSE_MODAL:
      return null;
    default:
      return oldState;
  }
};

export default ModalObjectReducer;