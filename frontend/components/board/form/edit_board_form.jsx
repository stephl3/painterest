import React from "react";

class EditBoardForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.board;

    this.update = this.update.bind(this);
    this.handleCheck = this.handleCheck.bind(this);
    this.handleDelete = this.handleDelete.bind(this);
    this.handleClose = this.handleClose.bind(this);
    this.handleSave = this.handleSave.bind(this);
  }

  update(e) {
    this.setState({ "title": e.currentTarget.value });
  }

  handleCheck() {
    this.setState({ "secret": !this.state.secret });
    const checkbox = document.getElementById('visibility-checkbox');
    if (this.state.secret) {
      checkbox.firstChild.style.opacity = 1.0;
    } else {
      checkbox.firstChild.style.opacity = 0.0;
    };
  }

  handleDelete(e) {
    e.preventDefault();
    this.props.deleteBoard();
  }

  handleClose(e) {
    e.preventDefault();
    this.props.closeModal();
  }

  handleSave(e) {
    e.preventDefault();
    this.props.processForm(this.state);
  }

  render() {
    const { board, errors, formType } = this.props;

    return (!board) ? null : (
      <div className="edit-board container">
        <div className="edit-board main">
          <form onSubmit className="edit-board form">
            <div className="edit-board header">
              <div className="edit-board form-type">
                <h5 className="edit-board form-type-label">
                  {formType}
                </h5>
              </div>
              <button
                className="edit-board close-button"
                onClick={this.handleClose}
              >
                <i className="fas fa-times edit-board close-icon"></i>
              </button>
            </div>
            <div className="edit-board fields">
              <div className="edit-board field-container name">
                <div className="edit-board label-container">
                  <label
                    htmlFor="name-input"
                    className="edit-board label"
                    id="name-label">
                    <div className="edit-board label-content">
                      Name
                    </div>
                  </label>
                </div>
                <div className="edit-board input-container">
                  <span>
                    <input
                      type="text"
                      className="edit-board name-input"
                      id="name-input"
                      placeholder='Like "Places to Go" or "Recipes to Make"'
                      onChange={this.update}
                    />
                    <div className="edit-board error-container">
                      <div className="edit-board error">
                        <span className="edit-board error-content"></span>
                      </div>
                    </div>
                  </span>
                </div>
              </div>
              <div className="edit-board field-container description">
                <div className="edit-board label-container">
                  <label
                    htmlFor="description-input"
                    className="edit-board label"
                    id="description-label">
                    <div className="edit-board label-content">
                      Description
                    </div>
                  </label>
                </div>
                <div className="edit-board input-container">
                  <span>
                    <textarea
                      className="edit-board description-input"
                      id="description-input"
                      placeholder="What's your board about?"
                      onChange={this.update}
                    />
                    <div className="edit-board error-container">
                      <div className="edit-board error">
                        <span className="edit-board error-content"></span>
                      </div>
                    </div>
                  </span>
                </div>
              </div>
              <div className="edit-board field-container" id="visibility">
                <div className="edit-board label-container">
                  <label
                    htmlFor="visibility-input"
                    className="edit-board label"
                    id="visibility-label">
                    <div
                      className="edit-board label-content"
                      onClick={this.handleCheck}
                    >
                      Visibility
                    </div>
                  </label>
                </div>
                <div className="edit-board input-container secret">
                  <div
                    className="edit-board"
                    id="visibility-checkbox"
                    onClick={this.handleCheck}
                  >
                    <i className="fas fa-check-square" id="visibility-checked"></i>
                  </div>
                  <div className="edit-board" id="visibility-note">
                    Keep this board secret.
                  </div>
                </div>
              </div>
            </div>
            <div className="edit-board footer">
              <div className="edit-board left-footer">
                <button
                  className="edit-board delete-button"
                  onClick={this.handleDelete}
                >
                  Delete
                </button>
              </div>
              <div className="edit-board right-footer">
                <button
                  className="edit-board cancel-button"
                  onClick={this.handleClose}
                >
                  Cancel
                </button>
                <button
                  className="edit-board save-button"
                  onClick={this.handleSave}
                >
                  Save
                </button>
              </div>
            </div>
          </form>
        </div>
      </div>
    );
  }
}

export default EditBoardForm;