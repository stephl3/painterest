import { combineReducers } from "redux";

import users from "./users_reducer";
import boards from "./boards_reducer";
import pins from "./pins_reducer";
import boardsPins from "./boards_pins_reducer";
// import additional entities

const EntitiesReducer = combineReducers({
  boards,
  pins,
  boardsPins,
  users,
  // add additional entities
});

export default EntitiesReducer;