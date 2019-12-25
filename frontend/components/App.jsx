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
import CreatePinFormContainer from "./pin/form/create_pin_form_container";
import EditProfileFormContainer from "./profile/edit_profile_form_container";
import ProfileShowContainer from "./profile/profile_show_container";
import BoardShowContainer from "./board/board_show_container";
import PinIndexContainer from "./pin/pin_index_container";
import HomeContainer from "./home/home_container";
// import Splash from "./session/splash";

const App = () => (
  <div className="app">
    <Modal />
    <header>
      <ProtectedRoute path="/" component={NavBarContainer} />
    </header>
    <Switch>
      <ProtectedRoute path="/pin-builder" component={CreatePinFormContainer} />
      <ProtectedRoute path="/settings" component={EditProfileFormContainer} />
      <ProtectedRoute exact path="/:username/pins" component={ProfileShowContainer} />
      <ProtectedRoute exact path="/:username/boards" component={ProfileShowContainer} />
      <ProtectedRoute exact path="/:username" component={ProfileShowContainer} />
      <ProtectedRoute path="/:username/:boardTitle" component={BoardShowContainer} />
      <Route exact path="/" component={HomeContainer} />
    </Switch>
    {/* <footer>
      create pin button?
    </footer> */}
  </div>
);

export default App;