/* Testing is good... right?
 */

/* Basic structure of a Unit Test
 *
 * // This uses the Object interface
 *
 * define(function (require) {
 *   var registerSuite = require('intern!object');
 *
 *   registerSuite({
 *     'passing test': function () {},
 *     'failing test': function () {
 *       throw new Error('Oops');
 *     }
 *   });
 * });
 * 
 */

// A unit test function, at its most basic level, is simply a function that 
// throws an error when a test failure occurs, or throws no errors when a test 
// passes.

define( function (require) {
  var registerSuite = require('intern!object');
  var assert        = require('intern/chai!assert');

  registerSuite({
    'RaiseButton is a <button>': function () {},
    'Touch events': function () {
      // Because we want our app to stay touch-compatible
      var mdnURL = "https://developer.mozilla.org/en-US/docs/Web/API/Touch_events/Using_Touch_Events#Community";
    },
    '/admin/test is only for trusted individuals': function () {
      assert();
    }
  });
});

// export default helloWorld;
