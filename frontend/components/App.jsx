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
// import EditPinFormContainer from "./pin/form/edit_pin_form_container";
import PinShowContainer from "./pin/pin_show_container";
import EditProfileFormContainer from "./profile/edit_profile_form_container";
import ProfileShowContainer from "./profile/profile_show_container";
import BoardShowContainer from "./board/board_show_container";
import HomeContainer from "./home/home_container";

const App = () => (
  <div className="app">
    <Modal />
    <header>
      <ProtectedRoute path="/" component={NavBarContainer} />
    </header>
    <Switch>
      <ProtectedRoute exact path="/pin-builder" component={CreatePinFormContainer} />
      <ProtectedRoute exact path="/pin/:pinId" component={PinShowContainer} />
      <ProtectedRoute exact path="/settings" component={EditProfileFormContainer} />
      <ProtectedRoute exact path="/following" component={HomeContainer} />
      <ProtectedRoute exact path="/:username/pins" component={ProfileShowContainer} />
      <ProtectedRoute exact path="/:username/boards" component={ProfileShowContainer} />
      <ProtectedRoute exact path="/:username" component={ProfileShowContainer} />
      <ProtectedRoute exact path="/:username/:boardTitle" component={BoardShowContainer} />
      <Route exact path="/" component={HomeContainer} />
    </Switch>
  </div>
);

export default App;