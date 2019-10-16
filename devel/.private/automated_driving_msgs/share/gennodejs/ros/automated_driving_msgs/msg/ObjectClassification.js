// Auto-generated. Do not edit!

// (in-package automated_driving_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ClassWithProbability = require('./ClassWithProbability.js');

//-----------------------------------------------------------

class ObjectClassification {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.classes_with_probabilities = null;
    }
    else {
      if (initObj.hasOwnProperty('classes_with_probabilities')) {
        this.classes_with_probabilities = initObj.classes_with_probabilities
      }
      else {
        this.classes_with_probabilities = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectClassification
    // Serialize message field [classes_with_probabilities]
    // Serialize the length for message field [classes_with_probabilities]
    bufferOffset = _serializer.uint32(obj.classes_with_probabilities.length, buffer, bufferOffset);
    obj.classes_with_probabilities.forEach((val) => {
      bufferOffset = ClassWithProbability.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectClassification
    let len;
    let data = new ObjectClassification(null);
    // Deserialize message field [classes_with_probabilities]
    // Deserialize array length for message field [classes_with_probabilities]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.classes_with_probabilities = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.classes_with_probabilities[i] = ClassWithProbability.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 5 * object.classes_with_probabilities.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'automated_driving_msgs/ObjectClassification';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2870d8643da9a6670bb7ff8151c06889';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectClassification(null);
    if (msg.classes_with_probabilities !== undefined) {
      resolved.classes_with_probabilities = new Array(msg.classes_with_probabilities.length);
      for (let i = 0; i < resolved.classes_with_probabilities.length; ++i) {
        resolved.classes_with_probabilities[i] = ClassWithProbability.Resolve(msg.classes_with_probabilities[i]);
      }
    }
    else {
      resolved.classes_with_probabilities = []
    }

    return resolved;
    }
};

// Constants for message
ObjectClassification.Constants = {
  UNCLASSIFIED: 0,
  PEDESTRIAN: 1,
  BICYCLE: 2,
  MOTORBIKE: 3,
  CAR: 4,
  TRUCK: 5,
  VIRTUAL_OBJECT: 81,
  OTHER_STATIC: 91,
  OTHER_DYNAMIC: 92,
}

module.exports = ObjectClassification;
