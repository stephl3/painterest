import React from "react";
import { Link, NavLink } from "react-router-dom";

class BoardShowNavBar extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      prevScrollPos: window.pageYOffset,
      fadeInTitle: false,
    };

    this.handleScroll = this.handleScroll.bind(this);
  }

  componentDidMount() {
    window.addEventListener("scroll", this.handleScroll);
  }

  componentWillUnmount() {
    window.removeEventListener("scroll", this.handleScroll);
  }

  handleScroll() {
    const { prevScrollPos } = this.state;
    const currentScrollPos = window.pageYOffset;
    const fadeInTitle = (prevScrollPos < currentScrollPos - 50);
    // calculates how far down the screen you are before enacting title transition
    
    this.setState({
      fadeInTitle
    });
  }

  render() {
    const { openEditBoard, board, user } = this.props;
    const transition = (this.state.fadeInTitle) ? 'in' : 'out';
    const klass = (location.hash.includes(user.username)) ? 'show' : 'hide';

    return (
      <div className="board-show navbar">
        <div className={`board-show buttons ${klass}`}>
          <Link to="/pin-builder"
            className="board-show button">
            {/* <i className="fas fa-plus board-show icon" id="create-pin-icon"></i> */}
            <i className="fas fa-map-pin board-show icon"></i>
          </Link>
          <button
            className="board-show button"
            onClick={(e, boardId) => openEditBoard(e, board.id)}
          >
            <i className="fas fa-pencil-alt board-show icon" id="edit-board-icon"></i>
          </button>
        </div>
        <div className="board-show fade-title-container">
          <div className={`board-show fade-title ${transition}`}>
            {board.title}
          </div>
        </div>
        <div className="board-show profile-button-container">
          <Link
            to={`/${user.username}`}
            className="board-show profile-button">
            <img src={user.photo} className="board-show profile-photo" />
          </Link>
        </div>
      </div>
    )
  }
}

export default BoardShowNavBar;

BoardShowNavBar.defaultProps = {
  board: {
    title: 'boardman',
    description: 'boardman gets paid',
    secret: false
  }
}