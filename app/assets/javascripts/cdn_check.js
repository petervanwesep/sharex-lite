window.onload = function() {
  if (typeof angular !== "undefined") {
    console.log("AngularJS is loaded! :D");
  } else {
    console.log("AngularJS is not loaded! :(");
  }

  if (typeof React !== "undefined") {
    console.log("React is loaded! :D");
  } else {
    console.log("React is not loaded! :(");
  }

  if (typeof jQuery !== "undefined") {
    console.log("jQuery is loaded! :D");
  } else {
    console.log("jQuery is not loaded! :(");
  }
}
