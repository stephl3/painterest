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
    this.handleDemo = this.handleDemo.bind(this);
    this._autoInput = this._autoInput.bind(this);
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

  handleDemo(e) {
    e.preventDefault();

    let email = "bob_ross@happyaccidents.org";
    let password = "password123";

    this._disableInputs();
    
    this.setState({email: "", password: ""}, () =>
      this._autoInput("email", email, () =>
        this._autoInput("password", password, () => {
          const demoUser = Object.assign({}, this.state);
          this.props.demoLogin(demoUser).then(this.props.closeModal);
        })
      )
    )
  }

  _disableInputs() {
    document.getElementById("email").disabled = true;
    document.getElementById("password").disabled = true;
    document.getElementById("form-action").disabled = true;
    document.getElementById("demo-login").disabled = true;
  }

  _autoInput(field, text, callback) {
    const inputChars = text.split("");
    
    const _addChar = (chars) => {
      if (chars.length > 0) {
        let char = chars.shift();
        let currentInput = this.state[field];
        this.setState(
          { [field]: (currentInput + char) },
          () => setTimeout(() => { _addChar(chars) }, 50)
        )
      } else {
        callback()
      }
    }
    
    _addChar(inputChars);
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
      <a className="switch-form-link" onClick={switchForm} id="switch-form">
        {formType === "Sign up" ? 
        "Already a member? Log in" : 
        "Not on Painterest yet? Sign up"}
      </a>
    );

    return (
      <div id="session-form-background">
        <div className="session-form-page">
          <div className="session-form-container">
            <div className="session-form-content">
              <i className="fab fa-pinterest" id="session-form-icon"></i>
              <div className="session-form-title">
                <h3>Welcome to Painterest</h3>
              </div>
              <div className="session-form-subtitle">
                <h3>Find new ideas to try</h3>
              </div>

              <form onSubmit={this.handleSubmit} className="session-form-box">
                {this.renderErrors()}
                <br />
                <div className="session-form">
                  <div>

                  </div>
                  <label>
                    <input
                      type="text"
                      placeholder="Email"
                      value={this.state.email}
                      onChange={this.changeInput("email")}
                      className="session-input"
                      id="email"
                    />
                  </label>
                  <br />
                  <label>
                    <input
                      type="password"
                      placeholder="Password"
                      value={this.state.password}
                      onChange={this.changeInput("password")}
                      className="session-input"
                      id="password"
                    />
                  </label>
                  <br />
                  <input
                    className="session-submit"
                    type="submit"
                    value={this.props.formType}
                    id="form-action"
                  />
                  <br />
                  <p className="button-separator">OR</p>
                  <input
                    className="demo-session"
                    type="submit"
                    value="Demo User"
                    onClick={this.handleDemo}
                    id="demo-login"
                  />
                  {switchFormLink}
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    );
  }
};

export default withRouter(SessionForm);