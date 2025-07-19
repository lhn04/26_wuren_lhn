// Auto-generated. Do not edit!

// (in-package turtle_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TurtleSpeed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.linear_speed = null;
      this.angular_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('linear_speed')) {
        this.linear_speed = initObj.linear_speed
      }
      else {
        this.linear_speed = 0.0;
      }
      if (initObj.hasOwnProperty('angular_speed')) {
        this.angular_speed = initObj.angular_speed
      }
      else {
        this.angular_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TurtleSpeed
    // Serialize message field [linear_speed]
    bufferOffset = _serializer.float32(obj.linear_speed, buffer, bufferOffset);
    // Serialize message field [angular_speed]
    bufferOffset = _serializer.float32(obj.angular_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurtleSpeed
    let len;
    let data = new TurtleSpeed(null);
    // Deserialize message field [linear_speed]
    data.linear_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_speed]
    data.angular_speed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'turtle_control/TurtleSpeed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '43db0e1accb8f076c0cf83cc7488c50c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 linear_speed
    float32 angular_speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TurtleSpeed(null);
    if (msg.linear_speed !== undefined) {
      resolved.linear_speed = msg.linear_speed;
    }
    else {
      resolved.linear_speed = 0.0
    }

    if (msg.angular_speed !== undefined) {
      resolved.angular_speed = msg.angular_speed;
    }
    else {
      resolved.angular_speed = 0.0
    }

    return resolved;
    }
};

module.exports = TurtleSpeed;
