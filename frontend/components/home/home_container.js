import { connect } from 'react-redux';
import Home from './home';


import { fetchPins } from '../../actions/pin_actions';
import { fetchAllUsers } from '../../actions/user_actions';

const mapStateToProps = state => {
  debugger;
  const pins = (state.session.id) ? (
    Object.values(state.entities.pins).slice(180, 220)
  ) : (
    Object.values(state.entities.pins)
  );
  return {
    pins: pins,
  };
};

const mapDispatchToProps = dispatch => ({
  fetchPins: () => dispatch(fetchPins()),

});

export default connect(mapStateToProps, mapDispatchToProps)(Home);