import React from "react";
import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from "react-router-dom";
import { ProtectedRoute, AuthRoute } from "../util/route_util";

import Modal from "./modal/modal";
import SignupFormContainer from "./session/signup_form_container";
import LoginFormContainer from "./session/login_form_container";
import NavBarContainer from "./navbar/nav_bar_container";
import PinIndexContainer from "./pin/pin_index_container";
import CreatePinFormContainer from "./pin/form/create_pin_form_container";
import EditProfileFormContainer from "./profile/edit_profile_form_container";
import ProfileShowContainer from "./profile/profile_show_container";

const App = () => (
  <div className="app">
    <Modal />
    <header>
      <ProtectedRoute path="/" component={NavBarContainer} />
    </header>
    <Switch>
      <ProtectedRoute path="/pin-builder" component={CreatePinFormContainer} />
      <ProtectedRoute path="/settings" component={EditProfileFormContainer} />
      <ProtectedRoute path="/:username" component={ProfileShowContainer} />
      <Route exact path="/" component={PinIndexContainer} />
    </Switch>
    {/* <footer>
      create pin button?
    </footer> */}
  </div>
);

export default App;