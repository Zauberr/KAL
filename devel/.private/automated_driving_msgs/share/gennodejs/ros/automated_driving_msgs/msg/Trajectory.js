// Auto-generated. Do not edit!

// (in-package automated_driving_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotionState = require('./MotionState.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Trajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.probability = null;
      this.motion_states = null;
      this.set_based_position_uncertainty = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('probability')) {
        this.probability = initObj.probability
      }
      else {
        this.probability = 0.0;
      }
      if (initObj.hasOwnProperty('motion_states')) {
        this.motion_states = initObj.motion_states
      }
      else {
        this.motion_states = [];
      }
      if (initObj.hasOwnProperty('set_based_position_uncertainty')) {
        this.set_based_position_uncertainty = initObj.set_based_position_uncertainty
      }
      else {
        this.set_based_position_uncertainty = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Trajectory
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [probability]
    bufferOffset = _serializer.float32(obj.probability, buffer, bufferOffset);
    // Serialize message field [motion_states]
    // Serialize the length for message field [motion_states]
    bufferOffset = _serializer.uint32(obj.motion_states.length, buffer, bufferOffset);
    obj.motion_states.forEach((val) => {
      bufferOffset = MotionState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [set_based_position_uncertainty]
    // Serialize the length for message field [set_based_position_uncertainty]
    bufferOffset = _serializer.uint32(obj.set_based_position_uncertainty.length, buffer, bufferOffset);
    obj.set_based_position_uncertainty.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Polygon.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Trajectory
    let len;
    let data = new Trajectory(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [probability]
    data.probability = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motion_states]
    // Deserialize array length for message field [motion_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.motion_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.motion_states[i] = MotionState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [set_based_position_uncertainty]
    // Deserialize array length for message field [set_based_position_uncertainty]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.set_based_position_uncertainty = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.set_based_position_uncertainty[i] = geometry_msgs.msg.Polygon.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.motion_states.forEach((val) => {
      length += MotionState.getMessageSize(val);
    });
    object.set_based_position_uncertainty.forEach((val) => {
      length += geometry_msgs.msg.Polygon.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'automated_driving_msgs/Trajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dfe3d1282121d63bd281a7dc32763b51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message representing a trajectory as consecutive motion states
    # NOTE: not compatible to http://wiki.ros.org/trajectory_msgs
    # License: BSD
    
    # ID of the trajectory
    #    Meant to be unique for one set of trajectories
    uint32 id
    
    # Probability of the trajectory
    #    Range: [0, 1]
    #    To be set only if a set of trajectories is given
    float32 probability
    
    # Array of motion states with time that describe the trajectory
    #    Sorted ascending by time
    MotionState[] motion_states
    
    # Array of polygons to describe the set-based position uncertainty
    #    Array indices matching the MotionState[]; z=0 for each polygon point
    #    For further details: http://docs.ros.org/api/geometry_msgs/html/msg/Polygon.html
    geometry_msgs/Polygon[] set_based_position_uncertainty
    
    ================================================================================
    MSG: automated_driving_msgs/MotionState
    # This represents an estimate of a MotionState (position, velocity and acceleration) in free space.
    # NOTE: Similar to nav_msgs/Odometry but including acceleration (http://docs.ros.org/api/nav_msgs/html/msg/Odometry.html)
    # License: BSD
    
    # Header
    #   frame_id of the global reference frame (common: "map", "odom")
    Header header
    
    #   frame_id of the child frame that this MotionState describes (common: "vehicle", "sensor_x")
    string child_frame_id
    
    # Pose (Position + Orientation)
    #   must be specified in the coordinate frame given by header.frame_id
    #   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/PoseWithCovariance.html
    geometry_msgs/PoseWithCovariance pose
    
    # Velocity
    #   must be specified in the coordinate frame given by child_frame_id
    #   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/TwistWithCovariance.html
    geometry_msgs/TwistWithCovariance twist
    
    # Acceleration
    #   must be specified in the coordinate frame given by child_frame_id
    #   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/AccelWithCovariance.html
    geometry_msgs/AccelWithCovariance accel
    
    # Treatment of unavailable data: almost as in http://docs.ros.org/api/sensor_msgs/html/msg/Imu.html:
    #
    # If the covariance of the measurement is known, it should be filled in (if all you know is the
    # variance of each measurement, e.g. from a datasheet, just put those along the diagonal)
    # A covariance matrix of all zeros will be interpreted as "covariance unknown", and to use the
    # data a covariance will have to be assumed or gotten from some other source
    #
    # If you have no estimate for one of the data elements, please set _the respective diagonal_ element
    # of the associated covariance matrix to -1
    # If you are interpreting this message, please check for a value of -1 in the _diagonal_ elements
    # of each covariance matrix, and disregard the associated estimates.
    
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
    
    ================================================================================
    MSG: geometry_msgs/TwistWithCovariance
    # This expresses velocity in free space with uncertainty.
    
    Twist twist
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/AccelWithCovariance
    # This expresses acceleration in free space with uncertainty.
    
    Accel accel
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Accel
    # This expresses acceleration in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Polygon
    #A specification of a polygon where the first and last points are assumed to be connected
    Point32[] points
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Trajectory(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.probability !== undefined) {
      resolved.probability = msg.probability;
    }
    else {
      resolved.probability = 0.0
    }

    if (msg.motion_states !== undefined) {
      resolved.motion_states = new Array(msg.motion_states.length);
      for (let i = 0; i < resolved.motion_states.length; ++i) {
        resolved.motion_states[i] = MotionState.Resolve(msg.motion_states[i]);
      }
    }
    else {
      resolved.motion_states = []
    }

    if (msg.set_based_position_uncertainty !== undefined) {
      resolved.set_based_position_uncertainty = new Array(msg.set_based_position_uncertainty.length);
      for (let i = 0; i < resolved.set_based_position_uncertainty.length; ++i) {
        resolved.set_based_position_uncertainty[i] = geometry_msgs.msg.Polygon.Resolve(msg.set_based_position_uncertainty[i]);
      }
    }
    else {
      resolved.set_based_position_uncertainty = []
    }

    return resolved;
    }
};

module.exports = Trajectory;
