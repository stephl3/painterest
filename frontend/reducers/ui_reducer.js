import { combineReducers } from 'redux';

// import filters from './filters_reducer';
import modal from './modal_reducer';
import objectId from './modal_object_reducer';

const UIReducer = combineReducers({
  // filters,
  modal,
  objectId
});

export default UIReducer;