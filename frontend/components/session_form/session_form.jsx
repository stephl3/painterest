import React from "react";
import { withRouter } from "react-router-dom";

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: "",
      password: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }
  
  changeInput(field) {
    return (
      e => this.setState({ [field]: e.currentTarget.value })
    );
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state)
    this.props.processForm(user).then(this.props.closeModal);
  }

  renderErrors() {
    return (
      <ul>
        {this.props.errors.map((err, i) => (
          <li key={i}>
            {err}
          </li>
        ))}
      </ul>
    );
  }

  render() {
    return (
      <div className="session-form-page">
        <div className="session-form-switch">{this.props.otherForm}</div>
        <div className="session-form-container">
          <form onSubmit={this.handleSubmit} className="session-form-box">
            <h1>Welcome to Painterest</h1>
              <br/>
            {this.renderErrors()}
              <br/>
            <div className="session-form">
              <label>Email:
                <input
                  type="text"
                  value={this.state.email}
                  onChange={this.changeInput("email")}
                  className="session-input"
                />
              </label>
                <br/>
              <label>Password:
                <input
                  type="password"
                  value={this.state.password}
                  onChange={this.changeInput("password")}
                  className="session-input"
                />
              </label>
                <br/>
              <input
                className="session-submit"
                type="submit"
                value={this.props.formType}
              />
                <br/>
              {this.props.otherForm}
            </div>
          </form>
        </div>
      </div>
    );
  }
};

export default withRouter(SessionForm);