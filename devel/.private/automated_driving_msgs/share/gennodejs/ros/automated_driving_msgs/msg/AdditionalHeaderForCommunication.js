// Auto-generated. Do not edit!

// (in-package automated_driving_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class AdditionalHeaderForCommunication {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sender_id = null;
      this.sender_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('sender_id')) {
        this.sender_id = initObj.sender_id
      }
      else {
        this.sender_id = 0;
      }
      if (initObj.hasOwnProperty('sender_pose')) {
        this.sender_pose = initObj.sender_pose
      }
      else {
        this.sender_pose = new geometry_msgs.msg.PoseWithCovarianceStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AdditionalHeaderForCommunication
    // Serialize message field [sender_id]
    bufferOffset = _serializer.uint32(obj.sender_id, buffer, bufferOffset);
    // Serialize message field [sender_pose]
    bufferOffset = geometry_msgs.msg.PoseWithCovarianceStamped.serialize(obj.sender_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AdditionalHeaderForCommunication
    let len;
    let data = new AdditionalHeaderForCommunication(null);
    // Deserialize message field [sender_id]
    data.sender_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sender_pose]
    data.sender_pose = geometry_msgs.msg.PoseWithCovarianceStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseWithCovarianceStamped.getMessageSize(object.sender_pose);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'automated_driving_msgs/AdditionalHeaderForCommunication';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ad8d6ff3241e85a418314f4bfc67b90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Additional header for a communication message
    # License: BSD
    
    # ObjectID of the sender
    uint32 sender_id
    
    # Position of the sender at time of sending the message
    geometry_msgs/PoseWithCovarianceStamped sender_pose
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovarianceStamped
    # This expresses an estimated pose with a reference coordinate frame and timestamp
    
    Header header
    PoseWithCovariance pose
    
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
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
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
    const resolved = new AdditionalHeaderForCommunication(null);
    if (msg.sender_id !== undefined) {
      resolved.sender_id = msg.sender_id;
    }
    else {
      resolved.sender_id = 0
    }

    if (msg.sender_pose !== undefined) {
      resolved.sender_pose = geometry_msgs.msg.PoseWithCovarianceStamped.Resolve(msg.sender_pose)
    }
    else {
      resolved.sender_pose = new geometry_msgs.msg.PoseWithCovarianceStamped()
    }

    return resolved;
    }
};

module.exports = AdditionalHeaderForCommunication;
