# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(mrt_image_geometry_ros_CONFIG_INCLUDED)
  return()
endif()
set(mrt_image_geometry_ros_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("FALSE" STREQUAL "TRUE")
  set(mrt_image_geometry_ros_SOURCE_PREFIX /home/kal5-2/rammbo/src/mrt_image_geometry_ros)
  set(mrt_image_geometry_ros_DEVEL_PREFIX /home/kal5-2/rammbo/devel/.private/mrt_image_geometry_ros)
  set(mrt_image_geometry_ros_INSTALL_PREFIX "")
  set(mrt_image_geometry_ros_PREFIX ${mrt_image_geometry_ros_DEVEL_PREFIX})
else()
  set(mrt_image_geometry_ros_SOURCE_PREFIX "")
  set(mrt_image_geometry_ros_DEVEL_PREFIX "")
  set(mrt_image_geometry_ros_INSTALL_PREFIX /home/kal5-2/rammbo/install)
  set(mrt_image_geometry_ros_PREFIX ${mrt_image_geometry_ros_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'mrt_image_geometry_ros' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(mrt_image_geometry_ros_FOUND_CATKIN_PROJECT TRUE)

if(NOT "include;/opt/mrtsoftware/release/include;/opt/mrtsoftware/release/include/opencv " STREQUAL " ")
  set(mrt_image_geometry_ros_INCLUDE_DIRS "")
  set(_include_dirs "include;/opt/mrtsoftware/release/include;/opt/mrtsoftware/release/include/opencv")
  if(NOT " " STREQUAL " ")
    set(_report "Check the issue tracker '' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT " " STREQUAL " ")
    set(_report "Check the website '' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'Carlos Fernandez <carlos.fernandez@kit.edu>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${mrt_image_geometry_ros_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'mrt_image_geometry_ros' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'mrt_image_geometry_ros' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/kal5-2/rammbo/install/${idir}'.  ${_report}")
    endif()
    _list_append_unique(mrt_image_geometry_ros_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "mrt_image_geometry_ros;/opt/mrtsoftware/release/lib/libopencv_calib3d.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_core.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_cudaarithm.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_cudabgsegm.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_cudacodec.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_cudafeatures2d.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_cudafilters.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_cudaimgproc.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_cudalegacy.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_cudaobjdetect.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_cudaoptflow.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_cudastereo.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_cudawarping.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_cudev.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_dnn.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_features2d.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_flann.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_highgui.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_imgcodecs.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_imgproc.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_ml.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_objdetect.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_photo.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_shape.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_stitching.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_superres.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_video.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_videoio.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_videostab.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_viz.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_aruco.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_bgsegm.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_bioinspired.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_ccalib.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_cvv.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_datasets.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_dnn_objdetect.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_dpm.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_face.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_freetype.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_fuzzy.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_hdf.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_hfs.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_img_hash.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_line_descriptor.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_optflow.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_phase_unwrapping.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_plot.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_reg.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_rgbd.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_saliency.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_sfm.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_stereo.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_structured_light.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_surface_matching.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_text.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_tracking.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_xfeatures2d.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_ximgproc.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_xobjdetect.so.3.4.5;/opt/mrtsoftware/release/lib/libopencv_xphoto.so.3.4.5")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND mrt_image_geometry_ros_LIBRARIES ${library})
  elseif(${library} MATCHES "^-l")
    list(APPEND mrt_image_geometry_ros_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND mrt_image_geometry_ros_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND mrt_image_geometry_ros_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/kal5-2/rammbo/install/lib;/home/kal5-2/rammbo/devel/lib;/opt/mrtros/lib;/opt/mrtsoftware/local/lib;/opt/mrtsoftware/release/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(mrt_image_geometry_ros_LIBRARY_DIRS ${lib_path})
      list(APPEND mrt_image_geometry_ros_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'mrt_image_geometry_ros'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND mrt_image_geometry_ros_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(mrt_image_geometry_ros_EXPORTED_TARGETS "")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${mrt_image_geometry_ros_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "roslib")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 mrt_image_geometry_ros_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${mrt_image_geometry_ros_dep}_FOUND)
      find_package(${mrt_image_geometry_ros_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${mrt_image_geometry_ros_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(mrt_image_geometry_ros_INCLUDE_DIRS ${${mrt_image_geometry_ros_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(mrt_image_geometry_ros_LIBRARIES ${mrt_image_geometry_ros_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${mrt_image_geometry_ros_dep}_LIBRARIES})
  _list_append_deduplicate(mrt_image_geometry_ros_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(mrt_image_geometry_ros_LIBRARIES ${mrt_image_geometry_ros_LIBRARIES})

  _list_append_unique(mrt_image_geometry_ros_LIBRARY_DIRS ${${mrt_image_geometry_ros_dep}_LIBRARY_DIRS})
  list(APPEND mrt_image_geometry_ros_EXPORTED_TARGETS ${${mrt_image_geometry_ros_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${mrt_image_geometry_ros_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
