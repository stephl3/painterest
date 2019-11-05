import { combineReducers } from "redux";

import users from "./users_reducer";
// import additional entities

const EntitiesReducer = combineReducers({
  users,
  // add additional entities
});

export default EntitiesReducer;