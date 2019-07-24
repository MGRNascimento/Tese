# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cluster_segmentation/DetectedObjectsArray.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import cluster_segmentation.msg
import geometry_msgs.msg
import std_msgs.msg
import shape_msgs.msg
import sensor_msgs.msg

class DetectedObjectsArray(genpy.Message):
  _md5sum = "0f96bf1a41debccbcfaeeb4e0699eab3"
  _type = "cluster_segmentation/DetectedObjectsArray"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """DetectedObject[] objects

================================================================================
MSG: cluster_segmentation/DetectedObject
string label
sensor_msgs/PointCloud2 cloud
shape_msgs/Mesh mesh
geometry_msgs/PoseStamped pose

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the "fields" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

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

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['objects']
  _slot_types = ['cluster_segmentation/DetectedObject[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       objects

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DetectedObjectsArray, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.objects is None:
        self.objects = []
    else:
      self.objects = []

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
      length = len(self.objects)
      buff.write(_struct_I.pack(length))
      for val1 in self.objects:
        _x = val1.label
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v1 = val1.cloud
        _v2 = _v1.header
        buff.write(_get_struct_I().pack(_v2.seq))
        _v3 = _v2.stamp
        _x = _v3
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v2.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v1
        buff.write(_get_struct_2I().pack(_x.height, _x.width))
        length = len(_v1.fields)
        buff.write(_struct_I.pack(length))
        for val3 in _v1.fields:
          _x = val3.name
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
          _x = val3
          buff.write(_get_struct_IBI().pack(_x.offset, _x.datatype, _x.count))
        _x = _v1
        buff.write(_get_struct_B2I().pack(_x.is_bigendian, _x.point_step, _x.row_step))
        _x = _v1.data
        length = len(_x)
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        buff.write(_get_struct_B().pack(_v1.is_dense))
        _v4 = val1.mesh
        length = len(_v4.triangles)
        buff.write(_struct_I.pack(length))
        for val3 in _v4.triangles:
          buff.write(_get_struct_3I().pack(*val3.vertex_indices))
        length = len(_v4.vertices)
        buff.write(_struct_I.pack(length))
        for val3 in _v4.vertices:
          _x = val3
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v5 = val1.pose
        _v6 = _v5.header
        buff.write(_get_struct_I().pack(_v6.seq))
        _v7 = _v6.stamp
        _x = _v7
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v6.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v8 = _v5.pose
        _v9 = _v8.position
        _x = _v9
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v10 = _v8.orientation
        _x = _v10
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.objects is None:
        self.objects = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.objects = []
      for i in range(0, length):
        val1 = cluster_segmentation.msg.DetectedObject()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.label = str[start:end].decode('utf-8')
        else:
          val1.label = str[start:end]
        _v11 = val1.cloud
        _v12 = _v11.header
        start = end
        end += 4
        (_v12.seq,) = _get_struct_I().unpack(str[start:end])
        _v13 = _v12.stamp
        _x = _v13
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v12.frame_id = str[start:end].decode('utf-8')
        else:
          _v12.frame_id = str[start:end]
        _x = _v11
        start = end
        end += 8
        (_x.height, _x.width,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v11.fields = []
        for i in range(0, length):
          val3 = sensor_msgs.msg.PointField()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.name = str[start:end].decode('utf-8')
          else:
            val3.name = str[start:end]
          _x = val3
          start = end
          end += 9
          (_x.offset, _x.datatype, _x.count,) = _get_struct_IBI().unpack(str[start:end])
          _v11.fields.append(val3)
        _x = _v11
        start = end
        end += 9
        (_x.is_bigendian, _x.point_step, _x.row_step,) = _get_struct_B2I().unpack(str[start:end])
        _v11.is_bigendian = bool(_v11.is_bigendian)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        _v11.data = str[start:end]
        start = end
        end += 1
        (_v11.is_dense,) = _get_struct_B().unpack(str[start:end])
        _v11.is_dense = bool(_v11.is_dense)
        _v14 = val1.mesh
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v14.triangles = []
        for i in range(0, length):
          val3 = shape_msgs.msg.MeshTriangle()
          start = end
          end += 12
          val3.vertex_indices = _get_struct_3I().unpack(str[start:end])
          _v14.triangles.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v14.vertices = []
        for i in range(0, length):
          val3 = geometry_msgs.msg.Point()
          _x = val3
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v14.vertices.append(val3)
        _v15 = val1.pose
        _v16 = _v15.header
        start = end
        end += 4
        (_v16.seq,) = _get_struct_I().unpack(str[start:end])
        _v17 = _v16.stamp
        _x = _v17
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v16.frame_id = str[start:end].decode('utf-8')
        else:
          _v16.frame_id = str[start:end]
        _v18 = _v15.pose
        _v19 = _v18.position
        _x = _v19
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v20 = _v18.orientation
        _x = _v20
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.objects.append(val1)
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
      length = len(self.objects)
      buff.write(_struct_I.pack(length))
      for val1 in self.objects:
        _x = val1.label
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v21 = val1.cloud
        _v22 = _v21.header
        buff.write(_get_struct_I().pack(_v22.seq))
        _v23 = _v22.stamp
        _x = _v23
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v22.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v21
        buff.write(_get_struct_2I().pack(_x.height, _x.width))
        length = len(_v21.fields)
        buff.write(_struct_I.pack(length))
        for val3 in _v21.fields:
          _x = val3.name
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.pack('<I%ss'%length, length, _x))
          _x = val3
          buff.write(_get_struct_IBI().pack(_x.offset, _x.datatype, _x.count))
        _x = _v21
        buff.write(_get_struct_B2I().pack(_x.is_bigendian, _x.point_step, _x.row_step))
        _x = _v21.data
        length = len(_x)
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        buff.write(_get_struct_B().pack(_v21.is_dense))
        _v24 = val1.mesh
        length = len(_v24.triangles)
        buff.write(_struct_I.pack(length))
        for val3 in _v24.triangles:
          buff.write(val3.vertex_indices.tostring())
        length = len(_v24.vertices)
        buff.write(_struct_I.pack(length))
        for val3 in _v24.vertices:
          _x = val3
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v25 = val1.pose
        _v26 = _v25.header
        buff.write(_get_struct_I().pack(_v26.seq))
        _v27 = _v26.stamp
        _x = _v27
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v26.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v28 = _v25.pose
        _v29 = _v28.position
        _x = _v29
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v30 = _v28.orientation
        _x = _v30
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.objects is None:
        self.objects = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.objects = []
      for i in range(0, length):
        val1 = cluster_segmentation.msg.DetectedObject()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.label = str[start:end].decode('utf-8')
        else:
          val1.label = str[start:end]
        _v31 = val1.cloud
        _v32 = _v31.header
        start = end
        end += 4
        (_v32.seq,) = _get_struct_I().unpack(str[start:end])
        _v33 = _v32.stamp
        _x = _v33
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v32.frame_id = str[start:end].decode('utf-8')
        else:
          _v32.frame_id = str[start:end]
        _x = _v31
        start = end
        end += 8
        (_x.height, _x.width,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v31.fields = []
        for i in range(0, length):
          val3 = sensor_msgs.msg.PointField()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.name = str[start:end].decode('utf-8')
          else:
            val3.name = str[start:end]
          _x = val3
          start = end
          end += 9
          (_x.offset, _x.datatype, _x.count,) = _get_struct_IBI().unpack(str[start:end])
          _v31.fields.append(val3)
        _x = _v31
        start = end
        end += 9
        (_x.is_bigendian, _x.point_step, _x.row_step,) = _get_struct_B2I().unpack(str[start:end])
        _v31.is_bigendian = bool(_v31.is_bigendian)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        _v31.data = str[start:end]
        start = end
        end += 1
        (_v31.is_dense,) = _get_struct_B().unpack(str[start:end])
        _v31.is_dense = bool(_v31.is_dense)
        _v34 = val1.mesh
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v34.triangles = []
        for i in range(0, length):
          val3 = shape_msgs.msg.MeshTriangle()
          start = end
          end += 12
          val3.vertex_indices = numpy.frombuffer(str[start:end], dtype=numpy.uint32, count=3)
          _v34.triangles.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v34.vertices = []
        for i in range(0, length):
          val3 = geometry_msgs.msg.Point()
          _x = val3
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v34.vertices.append(val3)
        _v35 = val1.pose
        _v36 = _v35.header
        start = end
        end += 4
        (_v36.seq,) = _get_struct_I().unpack(str[start:end])
        _v37 = _v36.stamp
        _x = _v37
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v36.frame_id = str[start:end].decode('utf-8')
        else:
          _v36.frame_id = str[start:end]
        _v38 = _v35.pose
        _v39 = _v38.position
        _x = _v39
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v40 = _v38.orientation
        _x = _v40
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.objects.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_IBI = None
def _get_struct_IBI():
    global _struct_IBI
    if _struct_IBI is None:
        _struct_IBI = struct.Struct("<IBI")
    return _struct_IBI
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_B2I = None
def _get_struct_B2I():
    global _struct_B2I
    if _struct_B2I is None:
        _struct_B2I = struct.Struct("<B2I")
    return _struct_B2I
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d