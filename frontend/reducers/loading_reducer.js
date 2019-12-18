import { START_LOADING, STOP_LOADING } from '../actions/loading_actions';

export default (oldState = false, action) => {
  switch (action.type) {
    case START_LOADING:
      return true;
    case STOP_LOADING:
      return false;
    default:
      return oldState;
  }
};