import { combineReducers } from 'redux';

// import filters from './filters_reducer';
import modal from './modal_reducer';

const UIReducer = combineReducers({
  // filters,
  modal
});

export default UIReducer;