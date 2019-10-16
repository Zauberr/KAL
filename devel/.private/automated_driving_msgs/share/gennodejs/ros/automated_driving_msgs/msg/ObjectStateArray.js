// Auto-generated. Do not edit!

// (in-package automated_driving_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObjectState = require('./ObjectState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ObjectStateArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.objects = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectStateArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [objects]
    // Serialize the length for message field [objects]
    bufferOffset = _serializer.uint32(obj.objects.length, buffer, bufferOffset);
    obj.objects.forEach((val) => {
      bufferOffset = ObjectState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectStateArray
    let len;
    let data = new ObjectStateArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [objects]
    // Deserialize array length for message field [objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects[i] = ObjectState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.objects.forEach((val) => {
      length += ObjectState.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'automated_driving_msgs/ObjectStateArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5c500e1a3ee9d84630928c547daf2f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message an array of object states (output of localization management)
    # License: BSD
    
    # Header
    Header header
    
    # Array of object states
    ObjectState[] objects
    
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
    MSG: automated_driving_msgs/ObjectState
    # Message for the state of an object
    # License: BSD
    
    # Header
    Header header
    
    # Lifetime ID of the object
    uint32 object_id
    
    # Existence measure
    #    Range: [0, 1]
    float32 existence_probability
    
    # Object classification
    ObjectClassification classification
    
    # Motion state of the object
    MotionState motion_state
    
    # Current motion prediction of the object
    MotionPrediction motion_prediction
    
    # Standard Message for the object dimensions
    #    Relative to motion_state/pose/pose
    #    For further details: http://docs.ros.org/api/shape_msgs/html/msg/Mesh.html
    shape_msgs/Mesh hull
    
    ================================================================================
    MSG: automated_driving_msgs/ObjectClassification
    # Object Classification: classes with probabilities
    # License: BSD
    
    # Possible Types (enum, to be extended)
    uint8 UNCLASSIFIED=0
    uint8 PEDESTRIAN=1
    uint8 BICYCLE=2
    uint8 MOTORBIKE=3
    uint8 CAR=4
    uint8 TRUCK=5
    # Virtual Object (e.g. for behavior generation)
    uint8 VIRTUAL_OBJECT=81
    # If object class is definitely none of the upper, these classes are to be used
    uint8 OTHER_STATIC=91
    uint8 OTHER_DYNAMIC=92
    
    # The object classes with their respective probability
    #    Sorted descending by probability (highest first)
    ClassWithProbability[] classes_with_probabilities
    
    ================================================================================
    MSG: automated_driving_msgs/ClassWithProbability
    # One class with its respective probability
    # License: BSD
    
    uint8 classification
    
    # Class probability
    #    Range: [0, 1]
    float32 probability
    
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
    MSG: automated_driving_msgs/MotionPrediction
    # Message for the prediction of an object
    # License: BSD
    
    # Header
    Header header
    
    # Possible Trajectories (including their probability)
    #    Sorted descending by probability (highest first)
    Trajectory[] trajectories
    
    ================================================================================
    MSG: automated_driving_msgs/Trajectory
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
    ================================================================================
    MSG: shape_msgs/Mesh
    # Definition of a mesh
    
    # list of triangles; the index values refer to positions in vertices[]
    MeshTriangle[] triangles
    
    # the actual vertices that make up the mesh
    geometry_msgs/Point[] vertices
    
    ================================================================================
    MSG: shape_msgs/MeshTriangle
    # Definition of a triangle's vertices
    uint32[3] vertex_indices
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectStateArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.objects !== undefined) {
      resolved.objects = new Array(msg.objects.length);
      for (let i = 0; i < resolved.objects.length; ++i) {
        resolved.objects[i] = ObjectState.Resolve(msg.objects[i]);
      }
    }
    else {
      resolved.objects = []
    }

    return resolved;
    }
};

module.exports = ObjectStateArray;
