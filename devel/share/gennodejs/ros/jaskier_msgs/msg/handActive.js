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

class handActive {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hand_active = null;
    }
    else {
      if (initObj.hasOwnProperty('hand_active')) {
        this.hand_active = initObj.hand_active
      }
      else {
        this.hand_active = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type handActive
    // Serialize message field [hand_active]
    bufferOffset = _serializer.bool(obj.hand_active, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type handActive
    let len;
    let data = new handActive(null);
    // Deserialize message field [hand_active]
    data.hand_active = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jaskier_msgs/handActive';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1387d0fd59a787e8568976617c630546';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Indicates if the hand is in an active state
    
    # true if hand is active (i.e. not by the user's side)
    bool hand_active
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new handActive(null);
    if (msg.hand_active !== undefined) {
      resolved.hand_active = msg.hand_active;
    }
    else {
      resolved.hand_active = false
    }

    return resolved;
    }
};

module.exports = handActive;
