import { connect } from 'react-redux';
import Home from './home';


import { fetchPins, loadPin } from '../../actions/pin_actions';
import { fetchAllUsers } from '../../actions/user_actions';

const mapStateToProps = state => ({
  pins: state.entities.pins,
  loadedPins: state.entities.loadedPins
});

const mapDispatchToProps = dispatch => ({
  fetchAllPins: () => dispatch(fetchAllPins()),
  fetchAllUsers: () => dispatch(fetchAllUsers()),

});

export default connect(mapStateToProps, mapDispatchToProps)(Home);