import React from "react";

class CreateBoardForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.board;

    this.update = this.update.bind(this);
    this.handleCheck = this.handleCheck.bind(this);
    this.handleClose = this.handleClose.bind(this);
    this.handleCreate = this.handleCreate.bind(this);
  }

  update(e) {
    this.setState({ "title": e.currentTarget.value });
  }

  handleCheck() {
    this.setState({ "secret": !this.state.secret });
    const checkbox = document.getElementById('visibility-checkbox');
    if (this.state.secret) {
      checkbox.firstChild.classList.add('checked');
    } else {
      checkbox.firstChild.classList.remove('checked');
    };
  }

  handleClose(e) {
    e.preventDefault();
    this.props.closeModal();
  }

  handleCreate(e) {
    e.preventDefault();
    this.props.processForm(this.state)
      .then(this.props.closeModal);
  }

  render() {
    const { errors, formType } = this.props;
    const checked = (this.state.secret) ? 'checked' : null;

    return (
      <div id="create-board-container">
        <div className="create-board" id="sizing">
          <div className="create-board" id="modal-fg">
            <div className="create-board" id="header">
              <div className="create-board" id="header-title-container">
                <h1 className="create-board" id="header-title">
                  Create board
                </h1>
              </div>
              <div className="create-board" id="close-button-container">
                <button
                  className="create-board"
                  id="close-button"
                  onClick={this.handleClose}
                >
                  <div className="create-board" id="close-icon-container">
                    <i className="fas fa-times create-board" id="close-icon"></i>
                  </div>
                </button>
              </div>
            </div>
            <div className="create-board" id="body">
              <div className="create-board" id="form-container">
                <form className="create-board" id="form" onSubmit={null}>
                  <div className="create-board" id="fields">
                    <div className="create-board field-container" id="name">
                      <div className="create-board label-container">
                        <label
                          htmlFor="name-input"
                          className="create-board label"
                          id="name-label">
                          <div className="create-board label-content">
                            Name
                          </div>
                        </label>
                      </div>
                      <div className="create-board input-container">
                        <span>
                          <input
                            type="text"
                            className="create-board name-input"
                            id="name-input"
                            placeholder='Like "Places to Go" or "Recipes to Make"'
                            onChange={this.update}
                          />
                          <div className="create-board error-container">
                            <div className="create-board error">
                              <span className="create-board error-content"></span>
                            </div>
                          </div>
                        </span>
                      </div>
                    </div>
                    <div className="create-board field-container" id="visibility">
                      <div className="create-board label-container">
                        <label
                          htmlFor="visibility-input"
                          className="create-board label"
                          id="visibility-label">
                          <div
                            className="create-board label-content"
                            onClick={this.handleCheck}
                          >
                            Visibility
                          </div>
                        </label>
                      </div>
                      <div className="create-board input-container secret">
                        <div
                          className="create-board"
                          id="visibility-checkbox"
                          onClick={this.handleCheck}
                        >
                          <i
                            className={`fas fa-check-square create-board checkbox ${checked}`}
                            id="visibility-checked"
                          ></i>
                        </div>
                        <div className="create-board" id="visibility-note">
                          Keep this board secret.
                        </div>
                      </div>
                    </div>
                  </div>
                  <div className="create-board footer-container">
                    <div className="create-board footer">
                      <div className="create-board buttons-container">
                        <div className="create-board buttons">
                          <div className="create-board button-container">
                            <button
                              className="create-board button"
                              id="cancel"
                              onClick={this.handleCancel}
                            >
                              Cancel
                            </button>
                          </div>
                          <div className="create-board button-container">
                            <button
                              className="create-board button"
                              id="create"
                              onClick={this.handleCreate}
                            >
                              Create
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default CreateBoardForm;