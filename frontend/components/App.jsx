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
import SignupFormContainer from "./session_form/signup_form_container";
import LoginFormContainer from "./session_form/login_form_container";
import NavBarContainer from "./navbar/nav_bar_container";
import HomeFeedContainer from "./homefeed/home_feed_container";
import ProfileShowContainer from "./profile/profile_show_container";
import EditProfileFormContainer from "./profile/edit_profile_form_container";

const App = () => (
  <div className="app">
    <Modal />
    <ProtectedRoute path="/" component={NavBarContainer} />
    
    <Switch>
      <ProtectedRoute path="/settings" component={EditProfileFormContainer} />
      <ProtectedRoute path="/:username" component={ProfileShowContainer} />
      {/* <ProtectedRoute exact path="/" component={HomeFeedContainer} /> */}
    </Switch>

    {/* <footer>
      create pin button?
    </footer> */}
  </div>
);

export default App;