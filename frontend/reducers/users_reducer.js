import { RECEIVE_CURRENT_USER } from "../actions/session_actions";
import { RECEIVE_ALL_USERS, RECEIVE_SINGLE_USER } from "../actions/user_actions";


const UsersReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  let nextState = Object.assign({}, oldState);

  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      return Object.assign(nextState, { [action.currentUser.id]: action.currentUser });
    case RECEIVE_ALL_USERS:
      return action.users;
    case RECEIVE_SINGLE_USER:
      return Object.assign(nextState, action.payload.user);
    default:
      return oldState;
  }
};

export default UsersReducer;