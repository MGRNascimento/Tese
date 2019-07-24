# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from sr_robot_msgs/ShadowContactStateStamped.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class ShadowContactStateStamped(genpy.Message):
  _md5sum = "a0f0d461efe98dfada1d88584c069890"
  _type = "sr_robot_msgs/ShadowContactStateStamped"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """# All 3D vectors are referenced in the fingertip core center

Header header					# stamp
geometry_msgs/Vector3 tangential_force  	# tangential force (local shear force)
geometry_msgs/Point  contact_position		# contact position
geometry_msgs/Vector3 contact_normal      	# contact normal
float64 Fnormal					# amplitude of normal force (along normal)
float64 Ltorque					# amplitude of local torque (around normal)


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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['header','tangential_force','contact_position','contact_normal','Fnormal','Ltorque']
  _slot_types = ['std_msgs/Header','geometry_msgs/Vector3','geometry_msgs/Point','geometry_msgs/Vector3','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,tangential_force,contact_position,contact_normal,Fnormal,Ltorque

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ShadowContactStateStamped, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.tangential_force is None:
        self.tangential_force = geometry_msgs.msg.Vector3()
      if self.contact_position is None:
        self.contact_position = geometry_msgs.msg.Point()
      if self.contact_normal is None:
        self.contact_normal = geometry_msgs.msg.Vector3()
      if self.Fnormal is None:
        self.Fnormal = 0.
      if self.Ltorque is None:
        self.Ltorque = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.tangential_force = geometry_msgs.msg.Vector3()
      self.contact_position = geometry_msgs.msg.Point()
      self.contact_normal = geometry_msgs.msg.Vector3()
      self.Fnormal = 0.
      self.Ltorque = 0.

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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_11d().pack(_x.tangential_force.x, _x.tangential_force.y, _x.tangential_force.z, _x.contact_position.x, _x.contact_position.y, _x.contact_position.z, _x.contact_normal.x, _x.contact_normal.y, _x.contact_normal.z, _x.Fnormal, _x.Ltorque))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.tangential_force is None:
        self.tangential_force = geometry_msgs.msg.Vector3()
      if self.contact_position is None:
        self.contact_position = geometry_msgs.msg.Point()
      if self.contact_normal is None:
        self.contact_normal = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 88
      (_x.tangential_force.x, _x.tangential_force.y, _x.tangential_force.z, _x.contact_position.x, _x.contact_position.y, _x.contact_position.z, _x.contact_normal.x, _x.contact_normal.y, _x.contact_normal.z, _x.Fnormal, _x.Ltorque,) = _get_struct_11d().unpack(str[start:end])
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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_11d().pack(_x.tangential_force.x, _x.tangential_force.y, _x.tangential_force.z, _x.contact_position.x, _x.contact_position.y, _x.contact_position.z, _x.contact_normal.x, _x.contact_normal.y, _x.contact_normal.z, _x.Fnormal, _x.Ltorque))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.tangential_force is None:
        self.tangential_force = geometry_msgs.msg.Vector3()
      if self.contact_position is None:
        self.contact_position = geometry_msgs.msg.Point()
      if self.contact_normal is None:
        self.contact_normal = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 88
      (_x.tangential_force.x, _x.tangential_force.y, _x.tangential_force.z, _x.contact_position.x, _x.contact_position.y, _x.contact_position.z, _x.contact_normal.x, _x.contact_normal.y, _x.contact_normal.z, _x.Fnormal, _x.Ltorque,) = _get_struct_11d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_11d = None
def _get_struct_11d():
    global _struct_11d
    if _struct_11d is None:
        _struct_11d = struct.Struct("<11d")
    return _struct_11d
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
