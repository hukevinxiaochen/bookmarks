// index.js

/*
 * Front-end libraries we rely on.
 * - React
 * - Material-UI
*/
import React from "react";
import ReactDOM from "react-dom";

// Provides onTouchTap prop
import injectTapEventPlugin from "react-tap-event-plugin";
injectTapEventPlugin();

// Root component
import MuiThemeProvider from "material-ui/styles/MuiThemeProvider";

// Included components
import RaisedButton from "material-ui/RaisedButton";
import ActionCached from "material-ui/svg-icons/action/cached";

const App = () => (
  <MuiThemeProvider>
    <RaisedButton 
      label="Sync" 
      icon={<ActionCached />}
    />
  </MuiThemeProvider>
);

// Render
ReactDOM.render((
  <App />
    ), document.getElementById('app'));

