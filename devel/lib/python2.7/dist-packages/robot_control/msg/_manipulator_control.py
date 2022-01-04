# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robot_control/manipulator_control.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class manipulator_control(genpy.Message):
  _md5sum = "a6a779fd1572e741e193ee9c3b3ad415"
  _type = "robot_control/manipulator_control"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint8 base
uint8 base_pwm
uint8 ac1
uint8 ac1_pwm
uint8 ac2
uint8 ac2_pwm
uint8 ac3
uint8 ac3_pwm
uint8 wrist
uint8 wrist_pwm
uint8 claw
uint8 claw_pwm"""
  __slots__ = ['base','base_pwm','ac1','ac1_pwm','ac2','ac2_pwm','ac3','ac3_pwm','wrist','wrist_pwm','claw','claw_pwm']
  _slot_types = ['uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       base,base_pwm,ac1,ac1_pwm,ac2,ac2_pwm,ac3,ac3_pwm,wrist,wrist_pwm,claw,claw_pwm

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(manipulator_control, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.base is None:
        self.base = 0
      if self.base_pwm is None:
        self.base_pwm = 0
      if self.ac1 is None:
        self.ac1 = 0
      if self.ac1_pwm is None:
        self.ac1_pwm = 0
      if self.ac2 is None:
        self.ac2 = 0
      if self.ac2_pwm is None:
        self.ac2_pwm = 0
      if self.ac3 is None:
        self.ac3 = 0
      if self.ac3_pwm is None:
        self.ac3_pwm = 0
      if self.wrist is None:
        self.wrist = 0
      if self.wrist_pwm is None:
        self.wrist_pwm = 0
      if self.claw is None:
        self.claw = 0
      if self.claw_pwm is None:
        self.claw_pwm = 0
    else:
      self.base = 0
      self.base_pwm = 0
      self.ac1 = 0
      self.ac1_pwm = 0
      self.ac2 = 0
      self.ac2_pwm = 0
      self.ac3 = 0
      self.ac3_pwm = 0
      self.wrist = 0
      self.wrist_pwm = 0
      self.claw = 0
      self.claw_pwm = 0

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
      buff.write(_get_struct_12B().pack(_x.base, _x.base_pwm, _x.ac1, _x.ac1_pwm, _x.ac2, _x.ac2_pwm, _x.ac3, _x.ac3_pwm, _x.wrist, _x.wrist_pwm, _x.claw, _x.claw_pwm))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 12
      (_x.base, _x.base_pwm, _x.ac1, _x.ac1_pwm, _x.ac2, _x.ac2_pwm, _x.ac3, _x.ac3_pwm, _x.wrist, _x.wrist_pwm, _x.claw, _x.claw_pwm,) = _get_struct_12B().unpack(str[start:end])
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
      buff.write(_get_struct_12B().pack(_x.base, _x.base_pwm, _x.ac1, _x.ac1_pwm, _x.ac2, _x.ac2_pwm, _x.ac3, _x.ac3_pwm, _x.wrist, _x.wrist_pwm, _x.claw, _x.claw_pwm))
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
      _x = self
      start = end
      end += 12
      (_x.base, _x.base_pwm, _x.ac1, _x.ac1_pwm, _x.ac2, _x.ac2_pwm, _x.ac3, _x.ac3_pwm, _x.wrist, _x.wrist_pwm, _x.claw, _x.claw_pwm,) = _get_struct_12B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_12B = None
def _get_struct_12B():
    global _struct_12B
    if _struct_12B is None:
        _struct_12B = struct.Struct("<12B")
    return _struct_12B