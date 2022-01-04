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

class manipulator_control {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.base = null;
      this.base_pwm = null;
      this.ac1 = null;
      this.ac1_pwm = null;
      this.ac2 = null;
      this.ac2_pwm = null;
      this.ac3 = null;
      this.ac3_pwm = null;
      this.wrist = null;
      this.wrist_pwm = null;
      this.claw = null;
      this.claw_pwm = null;
    }
    else {
      if (initObj.hasOwnProperty('base')) {
        this.base = initObj.base
      }
      else {
        this.base = 0;
      }
      if (initObj.hasOwnProperty('base_pwm')) {
        this.base_pwm = initObj.base_pwm
      }
      else {
        this.base_pwm = 0;
      }
      if (initObj.hasOwnProperty('ac1')) {
        this.ac1 = initObj.ac1
      }
      else {
        this.ac1 = 0;
      }
      if (initObj.hasOwnProperty('ac1_pwm')) {
        this.ac1_pwm = initObj.ac1_pwm
      }
      else {
        this.ac1_pwm = 0;
      }
      if (initObj.hasOwnProperty('ac2')) {
        this.ac2 = initObj.ac2
      }
      else {
        this.ac2 = 0;
      }
      if (initObj.hasOwnProperty('ac2_pwm')) {
        this.ac2_pwm = initObj.ac2_pwm
      }
      else {
        this.ac2_pwm = 0;
      }
      if (initObj.hasOwnProperty('ac3')) {
        this.ac3 = initObj.ac3
      }
      else {
        this.ac3 = 0;
      }
      if (initObj.hasOwnProperty('ac3_pwm')) {
        this.ac3_pwm = initObj.ac3_pwm
      }
      else {
        this.ac3_pwm = 0;
      }
      if (initObj.hasOwnProperty('wrist')) {
        this.wrist = initObj.wrist
      }
      else {
        this.wrist = 0;
      }
      if (initObj.hasOwnProperty('wrist_pwm')) {
        this.wrist_pwm = initObj.wrist_pwm
      }
      else {
        this.wrist_pwm = 0;
      }
      if (initObj.hasOwnProperty('claw')) {
        this.claw = initObj.claw
      }
      else {
        this.claw = 0;
      }
      if (initObj.hasOwnProperty('claw_pwm')) {
        this.claw_pwm = initObj.claw_pwm
      }
      else {
        this.claw_pwm = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type manipulator_control
    // Serialize message field [base]
    bufferOffset = _serializer.uint8(obj.base, buffer, bufferOffset);
    // Serialize message field [base_pwm]
    bufferOffset = _serializer.uint8(obj.base_pwm, buffer, bufferOffset);
    // Serialize message field [ac1]
    bufferOffset = _serializer.uint8(obj.ac1, buffer, bufferOffset);
    // Serialize message field [ac1_pwm]
    bufferOffset = _serializer.uint8(obj.ac1_pwm, buffer, bufferOffset);
    // Serialize message field [ac2]
    bufferOffset = _serializer.uint8(obj.ac2, buffer, bufferOffset);
    // Serialize message field [ac2_pwm]
    bufferOffset = _serializer.uint8(obj.ac2_pwm, buffer, bufferOffset);
    // Serialize message field [ac3]
    bufferOffset = _serializer.uint8(obj.ac3, buffer, bufferOffset);
    // Serialize message field [ac3_pwm]
    bufferOffset = _serializer.uint8(obj.ac3_pwm, buffer, bufferOffset);
    // Serialize message field [wrist]
    bufferOffset = _serializer.uint8(obj.wrist, buffer, bufferOffset);
    // Serialize message field [wrist_pwm]
    bufferOffset = _serializer.uint8(obj.wrist_pwm, buffer, bufferOffset);
    // Serialize message field [claw]
    bufferOffset = _serializer.uint8(obj.claw, buffer, bufferOffset);
    // Serialize message field [claw_pwm]
    bufferOffset = _serializer.uint8(obj.claw_pwm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type manipulator_control
    let len;
    let data = new manipulator_control(null);
    // Deserialize message field [base]
    data.base = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [base_pwm]
    data.base_pwm = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ac1]
    data.ac1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ac1_pwm]
    data.ac1_pwm = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ac2]
    data.ac2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ac2_pwm]
    data.ac2_pwm = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ac3]
    data.ac3 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ac3_pwm]
    data.ac3_pwm = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wrist]
    data.wrist = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wrist_pwm]
    data.wrist_pwm = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [claw]
    data.claw = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [claw_pwm]
    data.claw_pwm = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_control/manipulator_control';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a6a779fd1572e741e193ee9c3b3ad415';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 base
    uint8 base_pwm
    uint8 ac1
    uint8 ac1_pwm
    uint8 ac2
    uint8 ac2_pwm
    uint8 ac3
    uint8 ac3_pwm
    uint8 wrist
    uint8 wrist_pwm
    uint8 claw
    uint8 claw_pwm
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new manipulator_control(null);
    if (msg.base !== undefined) {
      resolved.base = msg.base;
    }
    else {
      resolved.base = 0
    }

    if (msg.base_pwm !== undefined) {
      resolved.base_pwm = msg.base_pwm;
    }
    else {
      resolved.base_pwm = 0
    }

    if (msg.ac1 !== undefined) {
      resolved.ac1 = msg.ac1;
    }
    else {
      resolved.ac1 = 0
    }

    if (msg.ac1_pwm !== undefined) {
      resolved.ac1_pwm = msg.ac1_pwm;
    }
    else {
      resolved.ac1_pwm = 0
    }

    if (msg.ac2 !== undefined) {
      resolved.ac2 = msg.ac2;
    }
    else {
      resolved.ac2 = 0
    }

    if (msg.ac2_pwm !== undefined) {
      resolved.ac2_pwm = msg.ac2_pwm;
    }
    else {
      resolved.ac2_pwm = 0
    }

    if (msg.ac3 !== undefined) {
      resolved.ac3 = msg.ac3;
    }
    else {
      resolved.ac3 = 0
    }

    if (msg.ac3_pwm !== undefined) {
      resolved.ac3_pwm = msg.ac3_pwm;
    }
    else {
      resolved.ac3_pwm = 0
    }

    if (msg.wrist !== undefined) {
      resolved.wrist = msg.wrist;
    }
    else {
      resolved.wrist = 0
    }

    if (msg.wrist_pwm !== undefined) {
      resolved.wrist_pwm = msg.wrist_pwm;
    }
    else {
      resolved.wrist_pwm = 0
    }

    if (msg.claw !== undefined) {
      resolved.claw = msg.claw;
    }
    else {
      resolved.claw = 0
    }

    if (msg.claw_pwm !== undefined) {
      resolved.claw_pwm = msg.claw_pwm;
    }
    else {
      resolved.claw_pwm = 0
    }

    return resolved;
    }
};

module.exports = manipulator_control;
