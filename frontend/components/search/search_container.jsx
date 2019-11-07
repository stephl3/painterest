import React from "react";
import modal from "../modal/modal";


class Search extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const {  } = this.props;

    return (
      <div className="search-container">
        <div className="search-icon-container">
          <svg className="search-icon" role="img">
            <path className="search-icon-path" d="M 10 16 c -3.31 0 -6 -2.69 -6 -6 s 2.69 -6 6 -6 s 6 2.69 6 6 s -2.69 6 -6 6 m 13.12 2.88 l -4.26 -4.26 A 9.842 9.842 0 0 0 20 10 c 0 -5.52 -4.48 -10 -10 -10 S 0 4.48 0 10 s 4.48 10 10 10 c 1.67 0 3.24 -0.41 4.62 -1.14 l 4.26 4.26 a 3 3 0 0 0 4.24 0 a 3 3 0 0 0 0 -4.24"></path>
          </svg>
        </div>
        <div className="search-bar">
          <input className="search-bar-input" type="text" placeholder="Search"/>
          {/* <div className="search-modal">
            When autocomplete results are available use up and down arrows
            to review and enter to select. Touch device users, explore by touch
            or with swipe gestures.
          </div> */}
        </div>
      </div>
    )
  }
};

export default Search;