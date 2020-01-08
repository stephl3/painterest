import { connect } from 'react-redux';
import Home from './home';


import { fetchPins } from '../../actions/pin_actions';
import { fetchSingleUser } from '../../actions/user_actions';

const mapStateToProps = state => {
  // debugger;
  const currentUserId = state.session.id;
  const allPins = Object.values(state.entities.pins);
  const pins = (state.session.id) ? (
    allPins
  ) : (
    allPins.slice(180, 220)
  );
  
  return {
    currentUserId,
    pins: pins,
  };
};

const mapDispatchToProps = dispatch => ({
  fetchPins: () => dispatch(fetchPins()),
  fetchSingleUser: id => dispatch(fetchSingleUser(id)),

});

export default connect(mapStateToProps, mapDispatchToProps)(Home);