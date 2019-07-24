# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from vizzy_msgs/GazeResult.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import sensor_msgs.msg
import geometry_msgs.msg
import std_msgs.msg

class GazeResult(genpy.Message):
  _md5sum = "d5c3318323b1e795566980b5f47176b6"
  _type = "vizzy_msgs/GazeResult"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
bool state_reached
geometry_msgs/PointStamped fixation_point
float64 fixation_point_error
sensor_msgs/JointState joint_states

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort
"""
  __slots__ = ['state_reached','fixation_point','fixation_point_error','joint_states']
  _slot_types = ['bool','geometry_msgs/PointStamped','float64','sensor_msgs/JointState']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       state_reached,fixation_point,fixation_point_error,joint_states

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GazeResult, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.state_reached is None:
        self.state_reached = False
      if self.fixation_point is None:
        self.fixation_point = geometry_msgs.msg.PointStamped()
      if self.fixation_point_error is None:
        self.fixation_point_error = 0.
      if self.joint_states is None:
        self.joint_states = sensor_msgs.msg.JointState()
    else:
      self.state_reached = False
      self.fixation_point = geometry_msgs.msg.PointStamped()
      self.fixation_point_error = 0.
      self.joint_states = sensor_msgs.msg.JointState()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_B3I().pack(_x.state_reached, _x.fixation_point.header.seq, _x.fixation_point.header.stamp.secs, _x.fixation_point.header.stamp.nsecs))
      _x = self.fixation_point.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_4d3I().pack(_x.fixation_point.point.x, _x.fixation_point.point.y, _x.fixation_point.point.z, _x.fixation_point_error, _x.joint_states.header.seq, _x.joint_states.header.stamp.secs, _x.joint_states.header.stamp.nsecs))
      _x = self.joint_states.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.joint_states.name)
      buff.write(_struct_I.pack(length))
      for val1 in self.joint_states.name:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.joint_states.position)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.joint_states.position))
      length = len(self.joint_states.velocity)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.joint_states.velocity))
      length = len(self.joint_states.effort)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.joint_states.effort))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.fixation_point is None:
        self.fixation_point = geometry_msgs.msg.PointStamped()
      if self.joint_states is None:
        self.joint_states = sensor_msgs.msg.JointState()
      end = 0
      _x = self
      start = end
      end += 13
      (_x.state_reached, _x.fixation_point.header.seq, _x.fixation_point.header.stamp.secs, _x.fixation_point.header.stamp.nsecs,) = _get_struct_B3I().unpack(str[start:end])
      self.state_reached = bool(self.state_reached)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.fixation_point.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.fixation_point.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 44
      (_x.fixation_point.point.x, _x.fixation_point.point.y, _x.fixation_point.point.z, _x.fixation_point_error, _x.joint_states.header.seq, _x.joint_states.header.stamp.secs, _x.joint_states.header.stamp.nsecs,) = _get_struct_4d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.joint_states.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.joint_states.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.joint_states.name = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.joint_states.name.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.joint_states.position = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.joint_states.velocity = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.joint_states.effort = struct.unpack(pattern, str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_B3I().pack(_x.state_reached, _x.fixation_point.header.seq, _x.fixation_point.header.stamp.secs, _x.fixation_point.header.stamp.nsecs))
      _x = self.fixation_point.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_4d3I().pack(_x.fixation_point.point.x, _x.fixation_point.point.y, _x.fixation_point.point.z, _x.fixation_point_error, _x.joint_states.header.seq, _x.joint_states.header.stamp.secs, _x.joint_states.header.stamp.nsecs))
      _x = self.joint_states.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.joint_states.name)
      buff.write(_struct_I.pack(length))
      for val1 in self.joint_states.name:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.joint_states.position)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.joint_states.position.tostring())
      length = len(self.joint_states.velocity)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.joint_states.velocity.tostring())
      length = len(self.joint_states.effort)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.joint_states.effort.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.fixation_point is None:
        self.fixation_point = geometry_msgs.msg.PointStamped()
      if self.joint_states is None:
        self.joint_states = sensor_msgs.msg.JointState()
      end = 0
      _x = self
      start = end
      end += 13
      (_x.state_reached, _x.fixation_point.header.seq, _x.fixation_point.header.stamp.secs, _x.fixation_point.header.stamp.nsecs,) = _get_struct_B3I().unpack(str[start:end])
      self.state_reached = bool(self.state_reached)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.fixation_point.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.fixation_point.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 44
      (_x.fixation_point.point.x, _x.fixation_point.point.y, _x.fixation_point.point.z, _x.fixation_point_error, _x.joint_states.header.seq, _x.joint_states.header.stamp.secs, _x.joint_states.header.stamp.nsecs,) = _get_struct_4d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.joint_states.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.joint_states.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.joint_states.name = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.joint_states.name.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.joint_states.position = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.joint_states.velocity = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.joint_states.effort = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4d3I = None
def _get_struct_4d3I():
    global _struct_4d3I
    if _struct_4d3I is None:
        _struct_4d3I = struct.Struct("<4d3I")
    return _struct_4d3I
_struct_B3I = None
def _get_struct_B3I():
    global _struct_B3I
    if _struct_B3I is None:
        _struct_B3I = struct.Struct("<B3I")
    return _struct_B3I