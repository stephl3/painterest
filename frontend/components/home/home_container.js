import { connect } from 'react-redux';
import Home from './home';


import { fetchPins } from '../../actions/pin_actions';
// import { fetchAllBoardsPins } from '../../actions/board_pin_actions';
// import { fetchSingleUser } from '../../actions/user_actions';
import { startLoading, stopLoading } from "../../actions/loading_actions";


const mapStateToProps = state => {
  // debugger;
  const currentUserId = state.session.id;
  const allPins = Object.values(state.entities.pins);
  const pins = (state.session.id) ? (
    allPins
  ) : (
    allPins.slice(180, 220)
  );
  const loading = state.ui.loading;

  return { currentUserId, pins, loading };
};

const mapDispatchToProps = dispatch => ({
  fetchPins: () => dispatch(fetchPins()),
  // fetchAllBoardsPins: () => dispatch(fetchAllBoardsPins()),
  // fetchSingleUser: id => dispatch(fetchSingleUser(id)),
  startLoading: () => dispatch(startLoading()),
  stopLoading: () => dispatch(stopLoading())
});

export default connect(mapStateToProps, mapDispatchToProps)(Home);