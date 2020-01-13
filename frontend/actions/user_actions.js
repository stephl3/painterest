import * as UserAPIUtil from "../util/user_api_util";

// action types
export const RECEIVE_ALL_USERS = "RECEIVE_ALL_USERS";
export const RECEIVE_SINGLE_USER = "RECEIVE_SINGLE_USER";
export const RECEIVE_USER_ERRORS = "RECEIVE_USER_ERRORS";

// action creators
const receiveAllUsers = users => ({
  type: RECEIVE_ALL_USERS,
  users
});

const receiveSingleUser = payload => ({
  type: RECEIVE_SINGLE_USER,
  payload
});

const receiveUserErrors = errors => ({
  type: RECEIVE_USER_ERRORS,
  errors
});

// thunk action creators
export const fetchAllUsers = () => dispatch => (
  UserAPIUtil.fetchAllUsers()
    .then(users => dispatch(receiveAllUsers(users)))
);

export const fetchSingleUser = id => dispatch => (
  UserAPIUtil.fetchSingleUser(id)
    .then(payload => dispatch(receiveSingleUser(payload)))
);

export const updateUser = (user, id) => dispatch => (
  UserAPIUtil.updateUser(user, id).then(
    user => dispatch(receiveSingleUser(user)),
    err => dispatch(receiveUserErrors(err.responseJSON))
  )
);