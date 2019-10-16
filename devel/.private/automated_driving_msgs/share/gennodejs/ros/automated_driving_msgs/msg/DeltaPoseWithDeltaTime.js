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

class DeltaPoseWithDeltaTime {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.delta_time = null;
      this.delta_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('delta_time')) {
        this.delta_time = initObj.delta_time
      }
      else {
        this.delta_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('delta_pose')) {
        this.delta_pose = initObj.delta_pose
      }
      else {
        this.delta_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeltaPoseWithDeltaTime
    // Serialize message field [delta_time]
    bufferOffset = _serializer.duration(obj.delta_time, buffer, bufferOffset);
    // Serialize message field [delta_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.delta_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeltaPoseWithDeltaTime
    let len;
    let data = new DeltaPoseWithDeltaTime(null);
    // Deserialize message field [delta_time]
    data.delta_time = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [delta_pose]
    data.delta_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'automated_driving_msgs/DeltaPoseWithDeltaTime';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd491e1e86421bdc854fe78f7237bf17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new DeltaPoseWithDeltaTime(null);
    if (msg.delta_time !== undefined) {
      resolved.delta_time = msg.delta_time;
    }
    else {
      resolved.delta_time = {secs: 0, nsecs: 0}
    }

    if (msg.delta_pose !== undefined) {
      resolved.delta_pose = geometry_msgs.msg.Pose.Resolve(msg.delta_pose)
    }
    else {
      resolved.delta_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = DeltaPoseWithDeltaTime;
