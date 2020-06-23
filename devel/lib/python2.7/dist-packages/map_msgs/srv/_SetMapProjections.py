# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from map_msgs/SetMapProjectionsRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SetMapProjectionsRequest(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "map_msgs/SetMapProjectionsRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetMapProjectionsRequest, self).__init__(*args, **kwds)

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
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
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
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from map_msgs/SetMapProjectionsResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import map_msgs.msg

class SetMapProjectionsResponse(genpy.Message):
  _md5sum = "d7980a33202421c8cd74565e57a4d229"
  _type = "map_msgs/SetMapProjectionsResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """map_msgs/ProjectedMapInfo[] projected_maps_info


================================================================================
MSG: map_msgs/ProjectedMapInfo
string frame_id
float64 x
float64 y
float64 width
float64 height
float64 min_z
float64 max_z"""
  __slots__ = ['projected_maps_info']
  _slot_types = ['map_msgs/ProjectedMapInfo[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       projected_maps_info

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetMapProjectionsResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.projected_maps_info is None:
        self.projected_maps_info = []
    else:
      self.projected_maps_info = []

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
      length = len(self.projected_maps_info)
      buff.write(_struct_I.pack(length))
      for val1 in self.projected_maps_info:
        _x = val1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_6d().pack(_x.x, _x.y, _x.width, _x.height, _x.min_z, _x.max_z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.projected_maps_info is None:
        self.projected_maps_info = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.projected_maps_info = []
      for i in range(0, length):
        val1 = map_msgs.msg.ProjectedMapInfo()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.frame_id = str[start:end].decode('utf-8')
        else:
          val1.frame_id = str[start:end]
        _x = val1
        start = end
        end += 48
        (_x.x, _x.y, _x.width, _x.height, _x.min_z, _x.max_z,) = _get_struct_6d().unpack(str[start:end])
        self.projected_maps_info.append(val1)
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
      length = len(self.projected_maps_info)
      buff.write(_struct_I.pack(length))
      for val1 in self.projected_maps_info:
        _x = val1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_6d().pack(_x.x, _x.y, _x.width, _x.height, _x.min_z, _x.max_z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.projected_maps_info is None:
        self.projected_maps_info = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.projected_maps_info = []
      for i in range(0, length):
        val1 = map_msgs.msg.ProjectedMapInfo()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.frame_id = str[start:end].decode('utf-8')
        else:
          val1.frame_id = str[start:end]
        _x = val1
        start = end
        end += 48
        (_x.x, _x.y, _x.width, _x.height, _x.min_z, _x.max_z,) = _get_struct_6d().unpack(str[start:end])
        self.projected_maps_info.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6d = None
def _get_struct_6d():
    global _struct_6d
    if _struct_6d is None:
        _struct_6d = struct.Struct("<6d")
    return _struct_6d
class SetMapProjections(object):
  _type          = 'map_msgs/SetMapProjections'
  _md5sum = 'd7980a33202421c8cd74565e57a4d229'
  _request_class  = SetMapProjectionsRequest
  _response_class = SetMapProjectionsResponse
