// Auto-generated. Do not edit!

// (in-package sr_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UBI0 = require('./UBI0.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class UBI0All {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tactiles = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tactiles')) {
        this.tactiles = initObj.tactiles
      }
      else {
        this.tactiles = new Array(5).fill(new UBI0());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UBI0All
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [tactiles] has the right length
    if (obj.tactiles.length !== 5) {
      throw new Error('Unable to serialize array field tactiles - length must be 5')
    }
    // Serialize message field [tactiles]
    obj.tactiles.forEach((val) => {
      bufferOffset = UBI0.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UBI0All
    let len;
    let data = new UBI0All(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tactiles]
    len = 5;
    data.tactiles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tactiles[i] = UBI0.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 120;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sr_robot_msgs/UBI0All';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22c64fd8e1fb1637211317013726a341';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    UBI0[5] tactiles
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: sr_robot_msgs/UBI0
    uint16[12] distal
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UBI0All(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tactiles !== undefined) {
      resolved.tactiles = new Array(5)
      for (let i = 0; i < resolved.tactiles.length; ++i) {
        if (msg.tactiles.length > i) {
          resolved.tactiles[i] = UBI0.Resolve(msg.tactiles[i]);
        }
        else {
          resolved.tactiles[i] = new UBI0();
        }
      }
    }
    else {
      resolved.tactiles = new Array(5).fill(new UBI0())
    }

    return resolved;
    }
};

module.exports = UBI0All;
