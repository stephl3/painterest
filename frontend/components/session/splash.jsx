import React from "react";
import { connect } from "react-redux";
import PinIndexContainer from "../pin/pin_index_container";

const Splash = ({ pins }) => {

  return (
    <div className="splash-container">
      <PinIndexContainer pins={pins} />
    </div>
  )
};

const mapStateToProps = state => ({
  pins: Object.values(state.entities.pins).slice(180, 220),
})

// const mapDispatchToProps = dispatch => ({
  
// })

export default connect(mapStateToProps, null)(Splash);