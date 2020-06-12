// Auto-generated. Do not edit!

// (in-package jaskier_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ultraTimeStamp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = new Array(5).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ultraTimeStamp
    // Check that the constant length array field [stamp] has the right length
    if (obj.stamp.length !== 5) {
      throw new Error('Unable to serialize array field stamp - length must be 5')
    }
    // Serialize message field [stamp]
    bufferOffset = _arraySerializer.time(obj.stamp, buffer, bufferOffset, 5);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ultraTimeStamp
    let len;
    let data = new ultraTimeStamp(null);
    // Deserialize message field [stamp]
    data.stamp = _arrayDeserializer.time(buffer, bufferOffset, 5)
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jaskier_msgs/ultraTimeStamp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1937f5302cea0024ac517264ca4dda57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # timestamps for ultrasonic module
    # [0] - when tx pulse is sent
    # [1-4] - when rx detects pulse
    
    time[5] stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ultraTimeStamp(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = new Array(5).fill(0)
    }

    return resolved;
    }
};

module.exports = ultraTimeStamp;
