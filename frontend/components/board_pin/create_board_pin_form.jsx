import React from "react";

class CreateBoardPinForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      pin_id: this.props.pin.id,
      board_id: null
    };
    this.handleSave = this.handleSave.bind(this);
  }

  componentDidMount() {
    this.props.fetchBoards();
  }

  handleSave(e) {
    e.preventDefault();
    this.setState({ board_id: e.currentTarget.value },
      () => this.props.createBoardPin(this.state)
        .then(this.props.closeModal));
  }

  render() {
    // debugger;
    const { currentUserId, pin, allBoards, closeModal } = this.props;
    const boards = allBoards.filter(board => board.userId === currentUserId);
    const boardListItems = boards.map(board =>  {
      const firstPinPhoto = (board.firstPin !== undefined) ? (
        <img src={board.firstPin.photo} className="board-list-item photo" />
      ) : null;

      return (
        <li
          key={board.id}
          className="create-board-pin board-list-item"
          value={board.id}
          onClick={this.handleSave}
        >
          <div className="board-list-item photo-container">
            {firstPinPhoto}
          </div>
          <div className="board-list-item title">
            {board.title}
          </div>
          <div className="board-list-item save-button">
            <i className="fas fa-thumbtack save-icon"></i>
            <div className="save-text">&nbsp;Save</div>
          </div>
        </li>
      )
    })

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