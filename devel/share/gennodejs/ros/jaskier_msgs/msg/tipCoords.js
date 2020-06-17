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

class tipCoords {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.thumb = null;
      this.index = null;
      this.middle = null;
      this.ring = null;
      this.little = null;
    }
    else {
      if (initObj.hasOwnProperty('thumb')) {
        this.thumb = initObj.thumb
      }
      else {
        this.thumb = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('middle')) {
        this.middle = initObj.middle
      }
      else {
        this.middle = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('ring')) {
        this.ring = initObj.ring
      }
      else {
        this.ring = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('little')) {
        this.little = initObj.little
      }
      else {
        this.little = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type tipCoords
    // Check that the constant length array field [thumb] has the right length
    if (obj.thumb.length !== 3) {
      throw new Error('Unable to serialize array field thumb - length must be 3')
    }
    // Serialize message field [thumb]
    bufferOffset = _arraySerializer.float64(obj.thumb, buffer, bufferOffset, 3);
    // Check that the constant length array field [index] has the right length
    if (obj.index.length !== 3) {
      throw new Error('Unable to serialize array field index - length must be 3')
    }
    // Serialize message field [index]
    bufferOffset = _arraySerializer.float64(obj.index, buffer, bufferOffset, 3);
    // Check that the constant length array field [middle] has the right length
    if (obj.middle.length !== 3) {
      throw new Error('Unable to serialize array field middle - length must be 3')
    }
    // Serialize message field [middle]
    bufferOffset = _arraySerializer.float64(obj.middle, buffer, bufferOffset, 3);
    // Check that the constant length array field [ring] has the right length
    if (obj.ring.length !== 3) {
      throw new Error('Unable to serialize array field ring - length must be 3')
    }
    // Serialize message field [ring]
    bufferOffset = _arraySerializer.float64(obj.ring, buffer, bufferOffset, 3);
    // Check that the constant length array field [little] has the right length
    if (obj.little.length !== 3) {
      throw new Error('Unable to serialize array field little - length must be 3')
    }
    // Serialize message field [little]
    bufferOffset = _arraySerializer.float64(obj.little, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type tipCoords
    let len;
    let data = new tipCoords(null);
    // Deserialize message field [thumb]
    data.thumb = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [index]
    data.index = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [middle]
    data.middle = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [ring]
    data.ring = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [little]
    data.little = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 120;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jaskier_msgs/tipCoords';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16c13f95c15ab83cb390e0132a0d1f39';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # stores fingertip coordinates
    
    float64[3] thumb
    float64[3] index
    float64[3] middle
    float64[3] ring
    float64[3] little
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new tipCoords(null);
    if (msg.thumb !== undefined) {
      resolved.thumb = msg.thumb;
    }
    else {
      resolved.thumb = new Array(3).fill(0)
    }

    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = new Array(3).fill(0)
    }

    if (msg.middle !== undefined) {
      resolved.middle = msg.middle;
    }
    else {
      resolved.middle = new Array(3).fill(0)
    }

    if (msg.ring !== undefined) {
      resolved.ring = msg.ring;
    }
    else {
      resolved.ring = new Array(3).fill(0)
    }

    if (msg.little !== undefined) {
      resolved.little = msg.little;
    }
    else {
      resolved.little = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = tipCoords;
