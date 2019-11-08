import React from "react";
import ReactDOM from "react-dom";
import configureStore from "./store/store";
import Root from "./components/root";

document.addEventListener("DOMContentLoaded", () => {
  let store;
  let preloadedState;
  
  if (window.currentUser) {
    preloadedState = {
      session: { id: window.currentUser.id },
      entities: {
        users: { [window.currentUser.id]: window.currentUser }
      }
    };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    preloadedState = {
      ui: { modal: "signup"}
    } 
    store = configureStore(preloadedState);
  }
  window.getState = store.getState();
  const root = document.getElementById("root");
  ReactDOM.render(<Root store={store} />, root);
});