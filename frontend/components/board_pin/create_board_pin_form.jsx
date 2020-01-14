import React from "react";

class CreateBoardPinForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      pinId: this.props.pin.id,
      boardId: null
    };
    this.handleSave = this.handleSave.bind(this);
  }

  componentDidMount() {
    this.props.fetchBoards();
  }

  handleSave(e) {
    e.preventDefault();
    // this.setState({"boardId": })
    // this.props.createBoardPin(this.state);
  }

  render() {
    const { currentUserId, pin, allBoards, closeModal } = this.props;
    const boards = allBoards.filter(board => board.userId === currentUserId);
    const boardListItems = boards.map(board => (
      <li
        key={board.id}
        className="create-board-pin board-list-item"
        value={board.id}
        onClick={this.handleSave}
      >
        <div className="board-list-item photo-container">
          <img src={board.firstPin.photo} className="board-list-item photo"/>
        </div>
        <div className="board-list-item title">
          {board.title}
        </div>
        <div className="board-list-item save-button">
          <i className="fas fa-thumbtack save-icon"></i>
          <div className="save-text">&nbsp;Save</div>
        </div>
      </li>
    ))

    return (
      <div className="create-board-pin container">
        <div className="create-board-pin header">
          <div className="create-board-pin form-title">Choose board</div>
          <a
            onClick={closeModal}
            className="create-board-pin close-link"
          >
            <i className="fas fa-times close-icon"></i>
          </a>
        </div>
        <div className="create-board-pin body">
          <div className="create-board-pin first-half">
            <div className="create-board-pin photo-container">
              <img src={pin.photo} className="create-board-pin photo"/>
            </div>
          </div>
          <div className="create-board-pin second-half">
            <ul className="create-board-pin board-list">
              {boardListItems}
            </ul>
          </div>
        </div>
      </div>
    );
  }
}

export default CreateBoardPinForm;