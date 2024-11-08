var exec = require('cordova/exec');

var screenshotDetection = {
    startDetection: function(successCallback, errorCallback) {
        exec(successCallback, errorCallback, 'ScreenshotDetection', 'startDetection', []);
    },
    stopDetection: function(successCallback, errorCallback) {
        exec(successCallback, errorCallback, 'ScreenshotDetection', 'stopDetection', []);
    }
};

module.exports = screenshotDetection;