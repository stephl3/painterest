import React from "react";
import modal from "../modal/modal";


class Search extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const { } = this.props;

    return (
      <div className="search-container">
        <div className="search-icon-container">
          <i className="fas fa-search" id="search-icon"></i>
        </div>
        <div className="search-input-container">
          <input className="search-input" type="text" placeholder="Search" />
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