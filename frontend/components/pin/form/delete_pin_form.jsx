import React from "react";

class DeletePinForm extends React.Component {
  constructor(props) {
    super(props);

    this.handleDelete = this.handleDelete.bind(this);
    this.handleCancel = this.handleCancel.bind(this);
  }

  handleDelete() {
    this.props.processForm(this.props.pinId)
      .then(this.props.closeModal)
      .then(() => location.reload());
  }

  handleCancel() {
    this.props.openEditPin(this.props.pinId);
  }

  render() {

    return (
      <div className="delete-pin container">
        <form className="delete-pin form">
          <div className="delete-pin header">
            <div className="delete-pin form-title">
              {this.props.formTitle}
            </div>
            <div className="delete-pin cancel-link-container">
              <a className="cancel-link" onClick={this.handleCancel}>
                <i className="fas fa-times cancel-icon"></i>
              </a>
            </div>
          </div>
          <div className="delete-pin body">
            <div className="delete-pin confirmation-message">
              Once you delete a Pin, you can't undo it!
            </div>
          </div>
          <div className="delete-pin footer">
            <div className="delete-pin buttons">
              <a
                className="delete-pin link cancel"
                onClick={this.handleCancel}
              >
                <div className="delete-pin link-text cancel">Cancel</div>
              </a>
              <a
                className="delete-pin link delete"
                onClick={this.handleDelete}
              >
                <div className="delete-pin link-text delete">Delete Pin</div>
              </a>
            </div>
          </div>
        </form>
      </div>
    );
  }
}

export default DeletePinForm;