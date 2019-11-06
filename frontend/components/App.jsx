import React from "react";

import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from "react-router-dom";

import Modal from "./modal/modal";
import SignupFormContainer from "./session_form/signup_form_container";
import LoginFormContainer from "./session_form/login_form_container";
import NavBarContainer from "./navbar/nav_bar_container";

const App = () => (
  <div className="app">
    <Modal />
    
    <header className="header">
      <NavBarContainer />
    </header>
    <main className="content">
      {/* <PinIndex /> */}
    </main>
    <footer className="footer">

    </footer>
  </div>
);

export default App;