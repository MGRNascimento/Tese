// Auto-generated. Do not edit!

// (in-package vizzy_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TacVector = require('./TacVector.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Tactile {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sensorsArray = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sensorsArray')) {
        this.sensorsArray = initObj.sensorsArray
      }
      else {
        this.sensorsArray = new Array(16).fill(new TacVector());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Tactile
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [sensorsArray] has the right length
    if (obj.sensorsArray.length !== 16) {
      throw new Error('Unable to serialize array field sensorsArray - length must be 16')
    }
    // Serialize message field [sensorsArray]
    obj.sensorsArray.forEach((val) => {
      bufferOffset = TacVector.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Tactile
    let len;
    let data = new Tactile(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensorsArray]
    len = 16;
    data.sensorsArray = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sensorsArray[i] = TacVector.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vizzy_msgs/Tactile';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6f495229c1ca17ef38013481c00069b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    TacVector[16] sensorsArray
    
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
    MSG: vizzy_msgs/TacVector
    int16 x
    int16 y
    int16 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Tactile(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sensorsArray !== undefined) {
      resolved.sensorsArray = new Array(16)
      for (let i = 0; i < resolved.sensorsArray.length; ++i) {
        if (msg.sensorsArray.length > i) {
          resolved.sensorsArray[i] = TacVector.Resolve(msg.sensorsArray[i]);
        }
        else {
          resolved.sensorsArray[i] = new TacVector();
        }
      }
    }
    else {
      resolved.sensorsArray = new Array(16).fill(new TacVector())
    }

    return resolved;
    }
};

module.exports = Tactile;
