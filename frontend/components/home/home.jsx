import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import PinIndexContainer from "../pin/pin_index_container";

class Home extends React.Component {
  constructor(props) {
    super(props);
    // this.state = this.props.pins;
    // this.handleClick = this.handleClick.bind(this);
  }

  // componentDidMount() {
    // this.props.fetchAllPins()
    //   .then(() => this.props.fetchAllUsers());
  // }

  // componentDidUpdate(prevProps) {
  //   if (this.props.loadedPins !== prevProps.loadedPins) {
  //     this.setState(this.props.loadedPins);
  //   }
  // }


  render() {
    const { pins } = this.props;
    return (
      <div className="home-container">
        <PinIndexContainer pins={pins} />
      </div>
    )
    // const pinArray = Object.values(pins);
    // const loadedPins = this.state.loadedPins.map(pin =>
    //   <div key={pin.id} className="pin">
    //     <Link to={`/pin/${pin.id}`}>
    //       <img src={pin.photoUrl} />
    //     </Link>
    //     <button
    //       className="create-pinning-button-small"
    //       onClick={this.handleClick(pin.id)}>
    //       <i className="fas fa-thumbtack"></i>
    //       Save
    //     </button>
    //     <div className="pin-item-description">
    //       {pin.description}
    //     </div>
    //   </div>
    // );
    // const feedLoading = pinArray.length > this.state.loadedPins.length;
    // const alreadyLoaded = pinArray.length === this.props.loadedPins.loadedPins.length;

    // return (
    //   <div className="masonry">
    //     {!alreadyLoaded &&
    //       <div className="hidden">
    //         {pinArray.map(pin =>
    //           <img
    //             src={pin.photoUrl}
    //             onLoad={this.onLoad.bind(this, pin)}
    //             key={pin.id}
    //           />
    //         )}
    //       </div>
    //     }
    //   </div>
    // );
  }
}

export default Home;