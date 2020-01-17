import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import PinIndexContainer from "../pin/pin_index_container";

const shuffle = require('shuffle-array');

class Home extends React.Component {
  constructor(props) {
    super(props);
    // this.state = this.props.pins;
    // this.handleClick = this.handleClick.bind(this);
  }

  componentDidMount() {
    // if (this.props.currentUserId !== null) {
    //   this.props.startLoading();
    //   this.props.fetchPins()
    //     .then(
    //       setTimeout(() => this.props.stopLoading(), 3000)
    //     )
    // } else {
      this.props.fetchPins();
    // }
  }

  render() {
    const { currentUserId, loading, pins } = this.props;
    let spacer, klass;
    if (currentUserId === null) {
      klass = "no-scroll";
      spacer = null;
    } else {
      klass = "";
      spacer = <div id="spacer"></div>;
    };

    const loader = (loading) ? (
      <div className="loading-background">
        <div className="loading"></div>
      </div>
    ) : null;
    // debugger;
    const otherPins = shuffle(pins.filter(pin => pin.userId !== currentUserId));
    const firstSet = otherPins.slice(0, 30);
    return (
      <div className={`home-container ${klass}`}>
        {spacer}
        {loader}
        <PinIndexContainer
          pins={firstSet}
          page="home"
        />
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