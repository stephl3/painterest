import React from "react";

class EditBoardForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      id: this.props.board.id,
      title: this.props.board.title,
      description: this.props.board.description,
      secret: this.props.board.secret
    };

    this.update = this.update.bind(this);
    this.handleCheck = this.handleCheck.bind(this);
    this.openDeleteBoard = this.openDeleteBoard.bind(this);
    this.handleClose = this.handleClose.bind(this);
    this.handleSave = this.handleSave.bind(this);
  }

  update(field) {
    return (e =>
      this.setState({ [field]: e.currentTarget.value })
    )
  }

  handleCheck(e) {
    e.preventDefault();

    this.setState({ "secret": !this.state.secret }, () => {
      const checkbox = document.getElementById('visibility-checkbox');
      if (this.state.secret) {
        checkbox.firstChild.classList.add('checked');
      } else {
        checkbox.firstChild.classList.remove('checked');
      }
    });
  }

  openDeleteBoard(e, boardId) {
    e.preventDefault();
    this.props.openDeleteBoard(boardId);
  }

  handleClose(e) {
    e.preventDefault();
    this.props.closeModal();
  }

  handleSave(e) {
    e.preventDefault();
    const username = this.props.currentUser.username;
    this.props.processForm(this.state)
      .then(this.props.closeModal)
      .then(() => location.href = `/#/${username}`)
  }

  render() {
    const { board, errors, formTitle } = this.props;
    const checked = (this.state.secret) ? 'checked' : null;

    return (
      <div className="edit-board container">
        <form className="edit-board form">
          <div className="edit-board header">
            <div className="edit-board form-title">
              {formTitle}
            </div>
            <button
              className="edit-board close-button"
              onClick={this.handleClose}
            >
              <i className="fas fa-times edit-board close-icon"></i>
            </button>
          </div>
          <div className="edit-board body">
            <div className="edit-board field name">
              <div className="edit-board label-container">
                <label
                  htmlFor="name-input"
                  className="edit-board label"
                  id="name-label">
                  Name
                </label>
              </div>
              <div className="edit-board input-container">
                <span>
                  <input
                    type="text"
                    className="edit-board input name"
                    id="name-input"
                    placeholder='Like "Places to Go" or "Recipes to Make"'
                    value={`${this.state.title}`}
                    onChange={this.update('title')}
                  />
                  <div className="edit-board error-container">
                    <div className="edit-board error">
                      <span className="edit-board error-content"></span>
                    </div>
                  </div>
                </span>
              </div>
            </div>
            <div className="edit-board field description">
              <div className="edit-board label-container">
                <label
                  htmlFor="description-input"
                  className="edit-board label"
                  id="description-label">
                  Description
                </label>
              </div>
              <div className="edit-board input-container">
                <span>
                  <textarea
                    className="edit-board input description"
                    id="description-input"
                    placeholder="What's your board about?"
                    value={`${this.state.description}`}
                    onChange={this.update('description')}
                    rows="3"
                  />
                  <div className="edit-board error-container">
                    <div className="edit-board error">
                      <span className="edit-board error-content"></span>
                    </div>
                  </div>
                </span>
              </div>
            </div>
            <div className="edit-board field visibility">
              <div className="edit-board label-container">
                <label
                  htmlFor="visibility-input"
                  className="edit-board label"
                  id="visibility-label"
                  onClick={this.handleCheck}
                >
                  Visibility
                </label>
              </div>
              <div className="edit-board input-container secret">
                <button
                  className="edit-board"
                  id="visibility-checkbox"
                  onClick={this.handleCheck}
                >
                  <i
                    className={`fas fa-check-square edit-board checkbox ${checked}`}
                    id="visibility-checked"
                  ></i>
                </button>
                <div className="edit-board visibility-note">
                  Keep this board secret.
                </div>
              </div>
            </div>
          </div>
          <div className="edit-board footer">
            <div className="edit-board footer-part left">
              <button
                className="edit-board button delete"
                onClick={(e, boardId) => this.openDeleteBoard(e, board.id)}
              >
                Delete
              </button>
            </div>
            <div className="edit-board footer-part right">
              <button
                className="edit-board button cancel"
                onClick={this.handleClose}
              >
                Cancel
              </button>
              <button
                className="edit-board button save"
                onClick={this.handleSave}
              >
                Save
              </button>
            </div>
          </div>
        </form>
      </div>
    );
  }
}

export default EditBoardForm;