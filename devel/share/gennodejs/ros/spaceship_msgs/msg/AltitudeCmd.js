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

class AltitudeCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vel_up = null;
    }
    else {
      if (initObj.hasOwnProperty('vel_up')) {
        this.vel_up = initObj.vel_up
      }
      else {
        this.vel_up = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AltitudeCmd
    // Serialize message field [vel_up]
    bufferOffset = _serializer.float32(obj.vel_up, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AltitudeCmd
    let len;
    let data = new AltitudeCmd(null);
    // Deserialize message field [vel_up]
    data.vel_up = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'spaceship_msgs/AltitudeCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e268374616d2c6125590afeae8cc068';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 vel_up
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AltitudeCmd(null);
    if (msg.vel_up !== undefined) {
      resolved.vel_up = msg.vel_up;
    }
    else {
      resolved.vel_up = 0.0
    }

    return resolved;
    }
};

module.exports = AltitudeCmd;
