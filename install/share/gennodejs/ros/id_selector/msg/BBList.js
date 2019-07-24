// Auto-generated. Do not edit!

// (in-package id_selector.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BoundingBox = require('./BoundingBox.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BBList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.bbVector = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('bbVector')) {
        this.bbVector = initObj.bbVector
      }
      else {
        this.bbVector = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BBList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [bbVector]
    // Serialize the length for message field [bbVector]
    bufferOffset = _serializer.uint32(obj.bbVector.length, buffer, bufferOffset);
    obj.bbVector.forEach((val) => {
      bufferOffset = BoundingBox.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BBList
    let len;
    let data = new BBList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [bbVector]
    // Deserialize array length for message field [bbVector]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bbVector = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bbVector[i] = BoundingBox.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 45 * object.bbVector.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'id_selector/BBList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '451051af5703a61c3d4949dd71734381';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    BoundingBox[] bbVector
    
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
    MSG: id_selector/BoundingBox
    int32 id
    int32 x
    int32 y
    int32 width
    int32 height
    bool tracked
    geometry_msgs/Point person3dLocation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BBList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.bbVector !== undefined) {
      resolved.bbVector = new Array(msg.bbVector.length);
      for (let i = 0; i < resolved.bbVector.length; ++i) {
        resolved.bbVector[i] = BoundingBox.Resolve(msg.bbVector[i]);
      }
    }
    else {
      resolved.bbVector = []
    }

    return resolved;
    }
};

module.exports = BBList;