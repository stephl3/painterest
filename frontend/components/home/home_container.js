import { connect } from 'react-redux';
import DiscoverFeed from './discover_feed';
import { fetchAllPins, loadPin } from '../../actions/pin_actions';
import { fetchAllUsers } from '../../actions/user_actions';

const mapStateToProps = state => ({
  pins: state.entities.pins,
  loadedPins: state.entities.loadedPins
});

const mapDispatchToProps = dispatch => ({
  fetchAllPins: () => dispatch(fetchAllPins()),
  fetchAllUsers: () => dispatch(fetchAllUsers()),
  loadPin: pin => dispatch(loadPin(pin))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(DiscoverFeed);