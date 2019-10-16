## *********************************************************
##
## File autogenerated for the obstacle_detection_ros_tool package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 246, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/mrtros/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [{'upper': 'FRAMES', 'lower': 'frames', 'srcline': 124, 'name': 'Frames', 'parent': 0, 'srcfile': '/opt/mrtros/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT::FRAMES', 'field': 'DEFAULT::frames', 'state': True, 'parentclass': 'DEFAULT', 'groups': [], 'parameters': [], 'type': '', 'id': 1}, {'upper': 'PUBLISHER_AND_SUBSCRIBER', 'lower': 'publisher_and_subscriber', 'srcline': 124, 'name': 'Publisher_and_subscriber', 'parent': 0, 'srcfile': '/opt/mrtros/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT::PUBLISHER_AND_SUBSCRIBER', 'field': 'DEFAULT::publisher_and_subscriber', 'state': True, 'parentclass': 'DEFAULT', 'groups': [], 'parameters': [], 'type': '', 'id': 2}], 'parameters': [{'srcline': 291, 'description': 'Sets the verbosity for this node', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/mrtros/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'verbosity', 'edit_method': "{'enum_description': 'Sets the verbosity for this node', 'enum': [{'srcline': 15, 'description': '', 'srcfile': '/home/kal5-2/rammbo/devel/.private/obstacle_detection_ros_tool/share/obstacle_detection_ros_tool/cfg/ObstacleDetection.cfg', 'cconsttype': 'const char * const', 'value': 'debug', 'ctype': 'std::string', 'type': 'str', 'name': 'debug'}, {'srcline': 16, 'description': '', 'srcfile': '/home/kal5-2/rammbo/devel/.private/obstacle_detection_ros_tool/share/obstacle_detection_ros_tool/cfg/ObstacleDetection.cfg', 'cconsttype': 'const char * const', 'value': 'info', 'ctype': 'std::string', 'type': 'str', 'name': 'info'}, {'srcline': 17, 'description': '', 'srcfile': '/home/kal5-2/rammbo/devel/.private/obstacle_detection_ros_tool/share/obstacle_detection_ros_tool/cfg/ObstacleDetection.cfg', 'cconsttype': 'const char * const', 'value': 'warning', 'ctype': 'std::string', 'type': 'str', 'name': 'warning'}, {'srcline': 18, 'description': '', 'srcfile': '/home/kal5-2/rammbo/devel/.private/obstacle_detection_ros_tool/share/obstacle_detection_ros_tool/cfg/ObstacleDetection.cfg', 'cconsttype': 'const char * const', 'value': 'error', 'ctype': 'std::string', 'type': 'str', 'name': 'error'}, {'srcline': 19, 'description': '', 'srcfile': '/home/kal5-2/rammbo/devel/.private/obstacle_detection_ros_tool/share/obstacle_detection_ros_tool/cfg/ObstacleDetection.cfg', 'cconsttype': 'const char * const', 'value': 'fatal', 'ctype': 'std::string', 'type': 'str', 'name': 'fatal'}]}", 'default': 'info', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 291, 'description': 'queue size', 'max': 100, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/mrtros/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'queue_size', 'edit_method': '', 'default': 15, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 291, 'description': 'My Dummy Parameter', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/mrtros/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'dummy', 'edit_method': '', 'default': 0.1, 'level': 0, 'min': 0.0, 'type': 'double'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

ObstacleDetection_debug = 'debug'
ObstacleDetection_info = 'info'
ObstacleDetection_warning = 'warning'
ObstacleDetection_error = 'error'
ObstacleDetection_fatal = 'fatal'
