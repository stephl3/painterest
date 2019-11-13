import {
  RECEIVE_SESSION_ERRORS,
  RECEIVE_CURRENT_USER
} from "../actions/session_actions";
import { OPEN_MODAL } from "../actions/modal_actions";

const SessionErrorsReducer = (oldState = [], action) => {
  Object.freeze(oldState);

  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      return [];
    case RECEIVE_SESSION_ERRORS:
      return action.errors;
    case OPEN_MODAL:
      return [];
    default:
      return oldState;
  }
};

export default SessionErrorsReducer;