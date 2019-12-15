import { RECEIVE_SINGLE_USER } from "../actions/user_actions";
import {
  RECEIVE_ALL_BOARDS_PINS,
  RECEIVE_BOARD_PIN,
  REMOVE_BOARD_PIN
} from '../actions/board_pin_actions';

const BoardsPinsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  let nextState = Object.assign({}, oldState);

  switch (action.type) {
    case RECEIVE_SINGLE_USER:
      return Object.assign(nextState, action.payload.boardsPins);
    case RECEIVE_ALL_BOARDS_PINS:
      return action.boardsPins
    case RECEIVE_BOARD_PIN:
      return Object.assign({}, nextState, { [action.boardPin.id]: action.boardPin })
    case REMOVE_BOARD_PIN:
      delete nextState[action.boardPinId];
      return nextState;
    default:
      return oldState;
  }
}

export default BoardsPinsReducer;