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

class touchContact {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance = null;
      this.thresh = null;
    }
    else {
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = new Array(5).fill(0);
      }
      if (initObj.hasOwnProperty('thresh')) {
        this.thresh = initObj.thresh
      }
      else {
        this.thresh = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type touchContact
    // Check that the constant length array field [distance] has the right length
    if (obj.distance.length !== 5) {
      throw new Error('Unable to serialize array field distance - length must be 5')
    }
    // Serialize message field [distance]
    bufferOffset = _arraySerializer.float64(obj.distance, buffer, bufferOffset, 5);
    // Serialize message field [thresh]
    bufferOffset = _serializer.float64(obj.thresh, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type touchContact
    let len;
    let data = new touchContact(null);
    // Deserialize message field [distance]
    data.distance = _arrayDeserializer.float64(buffer, bufferOffset, 5)
    // Deserialize message field [thresh]
    data.thresh = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jaskier_msgs/touchContact';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3aae430fea1916af49e822715e516338';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Indicates which fingertips are touching and the proximity of the contact
    
    float64[5] distance
    float64 thresh
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new touchContact(null);
    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = new Array(5).fill(0)
    }

    if (msg.thresh !== undefined) {
      resolved.thresh = msg.thresh;
    }
    else {
      resolved.thresh = 0.0
    }

    return resolved;
    }
};

module.exports = touchContact;
