# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "spaceship_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ispaceship_msgs:/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(spaceship_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/Twist2D.msg" NAME_WE)
add_custom_target(_spaceship_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spaceship_msgs" "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/Twist2D.msg" ""
)

get_filename_component(_filename "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/AltitudeCmd.msg" NAME_WE)
add_custom_target(_spaceship_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spaceship_msgs" "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/AltitudeCmd.msg" ""
)

get_filename_component(_filename "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/MotorsCmd.msg" NAME_WE)
add_custom_target(_spaceship_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spaceship_msgs" "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/MotorsCmd.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(spaceship_msgs
  "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/Twist2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spaceship_msgs
)
_generate_msg_cpp(spaceship_msgs
  "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/AltitudeCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spaceship_msgs
)
_generate_msg_cpp(spaceship_msgs
  "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/MotorsCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spaceship_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(spaceship_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spaceship_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(spaceship_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(spaceship_msgs_generate_messages spaceship_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/Twist2D.msg" NAME_WE)
add_dependencies(spaceship_msgs_generate_messages_cpp _spaceship_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/AltitudeCmd.msg" NAME_WE)
add_dependencies(spaceship_msgs_generate_messages_cpp _spaceship_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/MotorsCmd.msg" NAME_WE)
add_dependencies(spaceship_msgs_generate_messages_cpp _spaceship_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spaceship_msgs_gencpp)
add_dependencies(spaceship_msgs_gencpp spaceship_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spaceship_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(spaceship_msgs
  "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/Twist2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spaceship_msgs
)
_generate_msg_eus(spaceship_msgs
  "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/AltitudeCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spaceship_msgs
)
_generate_msg_eus(spaceship_msgs
  "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/MotorsCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spaceship_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(spaceship_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spaceship_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(spaceship_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(spaceship_msgs_generate_messages spaceship_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/Twist2D.msg" NAME_WE)
add_dependencies(spaceship_msgs_generate_messages_eus _spaceship_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/AltitudeCmd.msg" NAME_WE)
add_dependencies(spaceship_msgs_generate_messages_eus _spaceship_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/MotorsCmd.msg" NAME_WE)
add_dependencies(spaceship_msgs_generate_messages_eus _spaceship_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spaceship_msgs_geneus)
add_dependencies(spaceship_msgs_geneus spaceship_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spaceship_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(spaceship_msgs
  "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/Twist2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spaceship_msgs
)
_generate_msg_lisp(spaceship_msgs
  "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/AltitudeCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spaceship_msgs
)
_generate_msg_lisp(spaceship_msgs
  "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/MotorsCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spaceship_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(spaceship_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spaceship_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(spaceship_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(spaceship_msgs_generate_messages spaceship_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/Twist2D.msg" NAME_WE)
add_dependencies(spaceship_msgs_generate_messages_lisp _spaceship_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/AltitudeCmd.msg" NAME_WE)
add_dependencies(spaceship_msgs_generate_messages_lisp _spaceship_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/MotorsCmd.msg" NAME_WE)
add_dependencies(spaceship_msgs_generate_messages_lisp _spaceship_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spaceship_msgs_genlisp)
add_dependencies(spaceship_msgs_genlisp spaceship_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spaceship_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(spaceship_msgs
  "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/Twist2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spaceship_msgs
)
_generate_msg_nodejs(spaceship_msgs
  "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/AltitudeCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spaceship_msgs
)
_generate_msg_nodejs(spaceship_msgs
  "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/MotorsCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spaceship_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(spaceship_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spaceship_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(spaceship_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(spaceship_msgs_generate_messages spaceship_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/Twist2D.msg" NAME_WE)
add_dependencies(spaceship_msgs_generate_messages_nodejs _spaceship_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/AltitudeCmd.msg" NAME_WE)
add_dependencies(spaceship_msgs_generate_messages_nodejs _spaceship_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/MotorsCmd.msg" NAME_WE)
add_dependencies(spaceship_msgs_generate_messages_nodejs _spaceship_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spaceship_msgs_gennodejs)
add_dependencies(spaceship_msgs_gennodejs spaceship_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spaceship_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(spaceship_msgs
  "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/Twist2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spaceship_msgs
)
_generate_msg_py(spaceship_msgs
  "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/AltitudeCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spaceship_msgs
)
_generate_msg_py(spaceship_msgs
  "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/MotorsCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spaceship_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(spaceship_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spaceship_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(spaceship_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(spaceship_msgs_generate_messages spaceship_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/Twist2D.msg" NAME_WE)
add_dependencies(spaceship_msgs_generate_messages_py _spaceship_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/AltitudeCmd.msg" NAME_WE)
add_dependencies(spaceship_msgs_generate_messages_py _spaceship_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/subt_spaceship/src/spaceship_msgs/msg/MotorsCmd.msg" NAME_WE)
add_dependencies(spaceship_msgs_generate_messages_py _spaceship_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spaceship_msgs_genpy)
add_dependencies(spaceship_msgs_genpy spaceship_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spaceship_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spaceship_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spaceship_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(spaceship_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(spaceship_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(spaceship_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spaceship_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spaceship_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(spaceship_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(spaceship_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(spaceship_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spaceship_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spaceship_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(spaceship_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(spaceship_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(spaceship_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spaceship_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spaceship_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(spaceship_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(spaceship_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(spaceship_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spaceship_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spaceship_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spaceship_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(spaceship_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(spaceship_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(spaceship_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
