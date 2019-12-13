import React from "react";

class CreateBoardForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.board
  }

  render() {
    const { errors, formType } = this.props;

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
                <button className="create-board" id="close-button">
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
                          Name
                        </label>
                      </div>
                      <div className="create-board input-container">
                        <input
                          type="text"
                          className="create-board"
                          id="name-input"
                          placeholder='Like "Places to Go" or "Recipes to Make"'
                        />
                      </div>
                    </div>
                    <div className="create-board field-container" id="visibility">
                      <div className="create-board label-container">
                        <label
                          htmlFor="name-input"
                          className="create-board label"
                          id="visibility-label">
                          Visibility
                        </label>
                      </div>
                      <div className="create-board input-container">
                        <input
                          type="checkbox"
                          className="create-board"
                          id="visibility-input"
                        />
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
                              className="create-board"
                              id="cancel">
                              Cancel
                            </button>
                          </div>
                          <div className="create-board button-container">
                            <button
                              className="create-board"
                              id="create">
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