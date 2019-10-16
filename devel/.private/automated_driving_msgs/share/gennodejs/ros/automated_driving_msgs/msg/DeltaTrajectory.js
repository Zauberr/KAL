// Auto-generated. Do not edit!

// (in-package automated_driving_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DeltaPoseWithDeltaTime = require('./DeltaPoseWithDeltaTime.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DeltaTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.delta_poses_with_delta_time = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('delta_poses_with_delta_time')) {
        this.delta_poses_with_delta_time = initObj.delta_poses_with_delta_time
      }
      else {
        this.delta_poses_with_delta_time = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeltaTrajectory
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [delta_poses_with_delta_time]
    // Serialize the length for message field [delta_poses_with_delta_time]
    bufferOffset = _serializer.uint32(obj.delta_poses_with_delta_time.length, buffer, bufferOffset);
    obj.delta_poses_with_delta_time.forEach((val) => {
      bufferOffset = DeltaPoseWithDeltaTime.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeltaTrajectory
    let len;
    let data = new DeltaTrajectory(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [delta_poses_with_delta_time]
    // Deserialize array length for message field [delta_poses_with_delta_time]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.delta_poses_with_delta_time = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.delta_poses_with_delta_time[i] = DeltaPoseWithDeltaTime.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 64 * object.delta_poses_with_delta_time.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'automated_driving_msgs/DeltaTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '326b401761a7fb398dc1c64746db2f8e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for a desired motion of an object expressed by an array of desired positions
    # License: BSD
    
    # Header
    Header header
    
    # Array of desired delta positions with their respective delta time, after which the position is to be reached
    DeltaPoseWithDeltaTime[] delta_poses_with_delta_time
    
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
    string frame_id
    
    ================================================================================
    MSG: automated_driving_msgs/DeltaPoseWithDeltaTime
    # Message for a desired position of an object
    # License: BSD
    
    # Time Delta, after which the position is to be reached
    #    For further details: http://wiki.ros.org/std_msgs
    duration delta_time
    
    # The Position Delta to be reached
    #    This delta is always relative to the current position and orientation of the object
    #    For further details: http://docs.ros.org/api/geometry_msgs/html/msg/Pose.html
    geometry_msgs/Pose delta_pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DeltaTrajectory(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.delta_poses_with_delta_time !== undefined) {
      resolved.delta_poses_with_delta_time = new Array(msg.delta_poses_with_delta_time.length);
      for (let i = 0; i < resolved.delta_poses_with_delta_time.length; ++i) {
        resolved.delta_poses_with_delta_time[i] = DeltaPoseWithDeltaTime.Resolve(msg.delta_poses_with_delta_time[i]);
      }
    }
    else {
      resolved.delta_poses_with_delta_time = []
    }

    return resolved;
    }
};

module.exports = DeltaTrajectory;
