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
    const { formType, switchForm } = this.props;

    const switchFormLink = (
      <a onClick={switchForm}>
        {formType === "Sign up" ? 
        "Already a member? Log in" : 
        "Not on Painterest yet? Sign up"}
      </a>
    );

    return (
      <div className="session-form-page">
        <div className="session-form-container">
          <img className="session-form-icon" src="/painterest_icon.png" alt="painterest icon"/>
          <h3 className="session-form-header">Welcome to Painterest</h3>
          <form onSubmit={this.handleSubmit} className="session-form-box">
            {this.renderErrors()}
              <br/>
            <div className="session-form">
              <label>
                <input
                  type="text"
                  placeholder="Email"
                  value={this.state.email}
                  onChange={this.changeInput("email")}
                  className="session-input"
                />
              </label>
                <br/>
              <label>
                <input
                  type="password"
                  placeholder="Password"
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
              {switchFormLink}
            </div>
          </form>
        </div>
      </div>
    );
  }
};

export default withRouter(SessionForm);