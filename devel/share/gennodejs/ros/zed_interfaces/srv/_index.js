
"use strict";

let stop_object_detection = require('./stop_object_detection.js')
let start_object_detection = require('./start_object_detection.js')
let stop_svo_recording = require('./stop_svo_recording.js')
let set_pose = require('./set_pose.js')
let set_led_status = require('./set_led_status.js')
let reset_odometry = require('./reset_odometry.js')
let start_remote_stream = require('./start_remote_stream.js')
let reset_tracking = require('./reset_tracking.js')
let start_svo_recording = require('./start_svo_recording.js')
let stop_remote_stream = require('./stop_remote_stream.js')
let stop_3d_mapping = require('./stop_3d_mapping.js')
let toggle_led = require('./toggle_led.js')
let start_3d_mapping = require('./start_3d_mapping.js')

module.exports = {
  stop_object_detection: stop_object_detection,
  start_object_detection: start_object_detection,
  stop_svo_recording: stop_svo_recording,
  set_pose: set_pose,
  set_led_status: set_led_status,
  reset_odometry: reset_odometry,
  start_remote_stream: start_remote_stream,
  reset_tracking: reset_tracking,
  start_svo_recording: start_svo_recording,
  stop_remote_stream: stop_remote_stream,
  stop_3d_mapping: stop_3d_mapping,
  toggle_led: toggle_led,
  start_3d_mapping: start_3d_mapping,
};
