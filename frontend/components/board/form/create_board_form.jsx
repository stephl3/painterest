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
                  <div className="create-board" id="close-icon-container-shadow">
                    <div className="create-board" id="close-icon-container">
                      <i className="fas fa-times" id="close-icon"></i>
                    </div>
                  </div>
                </button>
              </div>
            </div>
            <div className="create-board" id="body">
              <div className="create-board" id="form-container">
                <form>

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