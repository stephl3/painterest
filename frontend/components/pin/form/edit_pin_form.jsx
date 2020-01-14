import React from "react";
import { Link } from "react-router-dom";

class EditPinForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.pin;

    this.update = this.update.bind(this);
    this.openDeletePin = this.openDeletePin.bind(this);
    this.handleCancel = this.handleCancel.bind(this);
    this.handleSave = this.handleSave.bind(this);
  }

  update(field) {
    return (e =>
      this.setState({ [field]: e.currentTarget.value })
    )
  }

  openDeletePin(e, pinId) {
    e.preventDefault();
    this.props.openDeletePin(pinId);
  }

  handleCancel() {
    this.props.closeModal();
  }

  handleSave() {
    this.props.processForm(this.state);
  }

  render() {
    const { pin, errors, formTitle } = this.props;

    return (
      <div className="edit-pin container">
        <div className="edit-pin header">
          <div className="edit-pin form-title">
            {formTitle}
          </div>
          <div className="edit-pin cancel-link-container">
            <a className="cancel-link" onClick={this.handleCancel}>
              <i className="fas fa-times cancel-icon"></i>
            </a>
          </div>
        </div>
        <div className="edit-pin body">
          <div className="edit-pin first-half">
            <label className="edit-pin" id="title-container">
              Title
              <input
                type="text"
                className="edit-pin"
                id="title"
                placeholder="Add your title"
                value={this.state.title}
                onChange={this.update("title")} />
            </label>
            <label className="edit-pin" id="description-container">
              Description
              <textarea
                rows="1"
                className="edit-pin"
                id="description"
                placeholder="Tell everyone what your Pin is about"
                value={this.state.description}
                onChange={this.update("description")} />
            </label>
            <label className="edit-pin" id="url-container">
              <textarea
                rows="1"
                className="edit-pin"
                id="url"
                placeholder="Add a destination link"
                value={this.state.url}
                onChange={this.update("url")} />
            </label>
          </div>
          <div className="edit-pin second-half">
            <div className="edit-pin photo-container">
              <img src={`${pin.photo}`}/>
            </div>
          </div>
        </div>
        <div className="edit-pin footer">
          <div className="edit-pin links">
            <div className="edit-pin left-links">
              <a
                className="edit-pin link open-delete"
                onClick={(e, pinId) => this.openDeletePin(e, pin.id)}
              >
                <div className="edit-pin link-text open-delete">Delete</div>
              </a>
            </div>
            <div className="edit-pin right-links">
              <a
                className="edit-pin link cancel"
                onClick={this.handleCancel}
              >
                <div className="edit-pin link-text cancel">Cancel</div>
              </a>
              <a
                className="edit-pin link save"
                onClick={this.handleSave}
              >
                <div className="edit-pin link-text save">Save</div>
              </a>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default EditPinForm;