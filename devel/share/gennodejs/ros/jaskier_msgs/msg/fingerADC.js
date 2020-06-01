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

class fingerADC {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.adcVals = null;
      this.adcMin = null;
      this.adcMax = null;
    }
    else {
      if (initObj.hasOwnProperty('adcVals')) {
        this.adcVals = initObj.adcVals
      }
      else {
        this.adcVals = new Array(5).fill(0);
      }
      if (initObj.hasOwnProperty('adcMin')) {
        this.adcMin = initObj.adcMin
      }
      else {
        this.adcMin = 0;
      }
      if (initObj.hasOwnProperty('adcMax')) {
        this.adcMax = initObj.adcMax
      }
      else {
        this.adcMax = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type fingerADC
    // Check that the constant length array field [adcVals] has the right length
    if (obj.adcVals.length !== 5) {
      throw new Error('Unable to serialize array field adcVals - length must be 5')
    }
    // Serialize message field [adcVals]
    bufferOffset = _arraySerializer.int32(obj.adcVals, buffer, bufferOffset, 5);
    // Serialize message field [adcMin]
    bufferOffset = _serializer.int32(obj.adcMin, buffer, bufferOffset);
    // Serialize message field [adcMax]
    bufferOffset = _serializer.int32(obj.adcMax, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type fingerADC
    let len;
    let data = new fingerADC(null);
    // Deserialize message field [adcVals]
    data.adcVals = _arrayDeserializer.int32(buffer, bufferOffset, 5)
    // Deserialize message field [adcMin]
    data.adcMin = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [adcMax]
    data.adcMax = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jaskier_msgs/fingerADC';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '684db9cd25303adefa48e14d9ffba24a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ADC values for each finger joint, and the min and max of seen adc vals
    
    # The order is thumb, index, middle, ring, little
    int32[5] adcVals
    int32 adcMin
    int32 adcMax
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new fingerADC(null);
    if (msg.adcVals !== undefined) {
      resolved.adcVals = msg.adcVals;
    }
    else {
      resolved.adcVals = new Array(5).fill(0)
    }

    if (msg.adcMin !== undefined) {
      resolved.adcMin = msg.adcMin;
    }
    else {
      resolved.adcMin = 0
    }

    if (msg.adcMax !== undefined) {
      resolved.adcMax = msg.adcMax;
    }
    else {
      resolved.adcMax = 0
    }

    return resolved;
    }
};

module.exports = fingerADC;
