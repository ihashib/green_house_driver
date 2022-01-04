// Auto-generated. Do not edit!

// (in-package robot_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class manipulator_adc {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.base_fd = null;
      this.ac1_fd = null;
      this.ac2_fd = null;
      this.ac3_fd = null;
      this.wrist_fd = null;
      this.claw_fd = null;
    }
    else {
      if (initObj.hasOwnProperty('base_fd')) {
        this.base_fd = initObj.base_fd
      }
      else {
        this.base_fd = 0;
      }
      if (initObj.hasOwnProperty('ac1_fd')) {
        this.ac1_fd = initObj.ac1_fd
      }
      else {
        this.ac1_fd = 0;
      }
      if (initObj.hasOwnProperty('ac2_fd')) {
        this.ac2_fd = initObj.ac2_fd
      }
      else {
        this.ac2_fd = 0;
      }
      if (initObj.hasOwnProperty('ac3_fd')) {
        this.ac3_fd = initObj.ac3_fd
      }
      else {
        this.ac3_fd = 0;
      }
      if (initObj.hasOwnProperty('wrist_fd')) {
        this.wrist_fd = initObj.wrist_fd
      }
      else {
        this.wrist_fd = 0;
      }
      if (initObj.hasOwnProperty('claw_fd')) {
        this.claw_fd = initObj.claw_fd
      }
      else {
        this.claw_fd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type manipulator_adc
    // Serialize message field [base_fd]
    bufferOffset = _serializer.uint16(obj.base_fd, buffer, bufferOffset);
    // Serialize message field [ac1_fd]
    bufferOffset = _serializer.uint16(obj.ac1_fd, buffer, bufferOffset);
    // Serialize message field [ac2_fd]
    bufferOffset = _serializer.uint16(obj.ac2_fd, buffer, bufferOffset);
    // Serialize message field [ac3_fd]
    bufferOffset = _serializer.uint16(obj.ac3_fd, buffer, bufferOffset);
    // Serialize message field [wrist_fd]
    bufferOffset = _serializer.uint16(obj.wrist_fd, buffer, bufferOffset);
    // Serialize message field [claw_fd]
    bufferOffset = _serializer.uint16(obj.claw_fd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type manipulator_adc
    let len;
    let data = new manipulator_adc(null);
    // Deserialize message field [base_fd]
    data.base_fd = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ac1_fd]
    data.ac1_fd = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ac2_fd]
    data.ac2_fd = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ac3_fd]
    data.ac3_fd = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [wrist_fd]
    data.wrist_fd = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [claw_fd]
    data.claw_fd = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_control/manipulator_adc';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1750cc3164fbe6e56c557c43a182eb58';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 base_fd
    uint16 ac1_fd
    uint16 ac2_fd
    uint16 ac3_fd
    uint16 wrist_fd
    uint16 claw_fd	
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new manipulator_adc(null);
    if (msg.base_fd !== undefined) {
      resolved.base_fd = msg.base_fd;
    }
    else {
      resolved.base_fd = 0
    }

    if (msg.ac1_fd !== undefined) {
      resolved.ac1_fd = msg.ac1_fd;
    }
    else {
      resolved.ac1_fd = 0
    }

    if (msg.ac2_fd !== undefined) {
      resolved.ac2_fd = msg.ac2_fd;
    }
    else {
      resolved.ac2_fd = 0
    }

    if (msg.ac3_fd !== undefined) {
      resolved.ac3_fd = msg.ac3_fd;
    }
    else {
      resolved.ac3_fd = 0
    }

    if (msg.wrist_fd !== undefined) {
      resolved.wrist_fd = msg.wrist_fd;
    }
    else {
      resolved.wrist_fd = 0
    }

    if (msg.claw_fd !== undefined) {
      resolved.claw_fd = msg.claw_fd;
    }
    else {
      resolved.claw_fd = 0
    }

    return resolved;
    }
};

module.exports = manipulator_adc;
