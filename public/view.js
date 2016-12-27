// view.js

/*
 * Front-end libraries we rely on.
 * - React
 * - Material-UI
*/

// React
import React from                "react";
import ReactDOM from             "react-dom";

// Plugin for tap events
import injectTapEventPlugin from "react-tap-event-plugin";
injectTapEventPlugin();

// Root component
import MuiThemeProvider from     "material-ui/styles/MuiThemeProvider";

// Included components
import RaisedButton from         "material-ui/RaisedButton";
import ActionCached from         "material-ui/svg-icons/action/cached";

// Define App
const App = () => (
  <MuiThemeProvider>
    <RaisedButton 
      label="Sync" 
      icon={<ActionCached />}
    />
  </MuiThemeProvider>
);

/* Render
 *
*/

// Client-side
ReactDOM.render( ( <App /> ), document.getElementById( 'app' ) );

// Server side
// syncButton = ReactDOMServer.renderToStaticMarkup(App);
// console.log("Hello");

// Export
// module.exports = App;
// We are top-level
