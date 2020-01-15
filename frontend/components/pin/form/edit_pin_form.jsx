import React from "react";

class EditPinForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      id: this.props.pin.id,
      title: this.props.pin.title,
      description: this.props.pin.description,
      url: this.props.pin.url,
      user_id: this.props.pin.userId
    };

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

  openDeletePin() {
    this.props.openDeletePin(this.props.pin.id);
  }

  handleCancel() {
    this.props.closeModal();
  }

  handleSave() {
    this.props.processForm(this.state)
      .then(this.props.closeModal);
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
            <div className="edit-pin field title">
              <div className="edit-pin label-container title">
                <label htmlFor="title" className="edit-pin label title">
                  Title
                </label>
              </div>
              <div className="edit-pin input-container title">
                <input
                  type="text"
                  id="title"
                  className="edit-pin input title"
                  placeholder="Add your title"
                  value={this.state.title}
                  onChange={this.update("title")} />
              </div>
            </div>
            <div className="edit-pin field description">
              <div className="edit-pin label-container description">
                <label htmlFor="description" className="edit-pin label description">
                  Description
                </label>
              </div>
              <div className="edit-pin input-container description">
                <textarea
                  rows="3"
                  id="description"
                  className="edit-pin input description"
                  placeholder="Tell us about this Pin..."
                  value={this.state.description}
                  onChange={this.update("description")} />
              </div>
            </div>
            <div className="edit-pin field url">
              <div className="edit-pin label-container url">
                <label htmlFor="url" className="edit-pin label url">
                  Website
                </label>
              </div>
              <div className="edit-pin input-container url">
                <input
                  type="text"
                  id="url"
                  className="edit-pin input url"
                  value={this.state.url}
                  onChange={this.update("url")} />
              </div>
            </div>
          </div>
          <div className="edit-pin second-half">
            <div className="edit-pin photo-container">
              <img src={`${pin.photo}`}/>
              <div className="overlay"></div>
            </div>
          </div>
        </div>
        <div className="edit-pin footer">
          <div className="edit-pin links">
            <div className="edit-pin left-links">
              <a
                className="edit-pin link open-delete"
                onClick={this.openDeletePin}
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