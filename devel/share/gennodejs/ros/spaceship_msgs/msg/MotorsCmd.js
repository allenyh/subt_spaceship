// Auto-generated. Do not edit!

// (in-package spaceship_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MotorsCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vel_front_left = null;
      this.vel_front_right = null;
    }
    else {
      if (initObj.hasOwnProperty('vel_front_left')) {
        this.vel_front_left = initObj.vel_front_left
      }
      else {
        this.vel_front_left = 0.0;
      }
      if (initObj.hasOwnProperty('vel_front_right')) {
        this.vel_front_right = initObj.vel_front_right
      }
      else {
        this.vel_front_right = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorsCmd
    // Serialize message field [vel_front_left]
    bufferOffset = _serializer.float32(obj.vel_front_left, buffer, bufferOffset);
    // Serialize message field [vel_front_right]
    bufferOffset = _serializer.float32(obj.vel_front_right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorsCmd
    let len;
    let data = new MotorsCmd(null);
    // Deserialize message field [vel_front_left]
    data.vel_front_left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel_front_right]
    data.vel_front_right = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'spaceship_msgs/MotorsCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c91d642ac64a555144121c4ff22ec24';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 vel_front_left
    float32 vel_front_right
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorsCmd(null);
    if (msg.vel_front_left !== undefined) {
      resolved.vel_front_left = msg.vel_front_left;
    }
    else {
      resolved.vel_front_left = 0.0
    }

    if (msg.vel_front_right !== undefined) {
      resolved.vel_front_right = msg.vel_front_right;
    }
    else {
      resolved.vel_front_right = 0.0
    }

    return resolved;
    }
};

module.exports = MotorsCmd;
