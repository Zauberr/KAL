# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kal5-2/rammbo/src/kinect2_registration

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kal5-2/rammbo/build/kinect2_registration

# Include any dependencies generated for this target.
include CMakeFiles/kinect2_registration.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/kinect2_registration.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/kinect2_registration.dir/flags.make

CMakeFiles/kinect2_registration.dir/src/kinect2_registration.cpp.o: CMakeFiles/kinect2_registration.dir/flags.make
CMakeFiles/kinect2_registration.dir/src/kinect2_registration.cpp.o: /home/kal5-2/rammbo/src/kinect2_registration/src/kinect2_registration.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kal5-2/rammbo/build/kinect2_registration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/kinect2_registration.dir/src/kinect2_registration.cpp.o"
	/usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kinect2_registration.dir/src/kinect2_registration.cpp.o -c /home/kal5-2/rammbo/src/kinect2_registration/src/kinect2_registration.cpp

CMakeFiles/kinect2_registration.dir/src/kinect2_registration.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kinect2_registration.dir/src/kinect2_registration.cpp.i"
	/usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kal5-2/rammbo/src/kinect2_registration/src/kinect2_registration.cpp > CMakeFiles/kinect2_registration.dir/src/kinect2_registration.cpp.i

CMakeFiles/kinect2_registration.dir/src/kinect2_registration.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kinect2_registration.dir/src/kinect2_registration.cpp.s"
	/usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kal5-2/rammbo/src/kinect2_registration/src/kinect2_registration.cpp -o CMakeFiles/kinect2_registration.dir/src/kinect2_registration.cpp.s

CMakeFiles/kinect2_registration.dir/src/depth_registration_cpu.cpp.o: CMakeFiles/kinect2_registration.dir/flags.make
CMakeFiles/kinect2_registration.dir/src/depth_registration_cpu.cpp.o: /home/kal5-2/rammbo/src/kinect2_registration/src/depth_registration_cpu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kal5-2/rammbo/build/kinect2_registration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/kinect2_registration.dir/src/depth_registration_cpu.cpp.o"
	/usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kinect2_registration.dir/src/depth_registration_cpu.cpp.o -c /home/kal5-2/rammbo/src/kinect2_registration/src/depth_registration_cpu.cpp

CMakeFiles/kinect2_registration.dir/src/depth_registration_cpu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kinect2_registration.dir/src/depth_registration_cpu.cpp.i"
	/usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kal5-2/rammbo/src/kinect2_registration/src/depth_registration_cpu.cpp > CMakeFiles/kinect2_registration.dir/src/depth_registration_cpu.cpp.i

CMakeFiles/kinect2_registration.dir/src/depth_registration_cpu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kinect2_registration.dir/src/depth_registration_cpu.cpp.s"
	/usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kal5-2/rammbo/src/kinect2_registration/src/depth_registration_cpu.cpp -o CMakeFiles/kinect2_registration.dir/src/depth_registration_cpu.cpp.s

CMakeFiles/kinect2_registration.dir/src/depth_registration_opencl.cpp.o: CMakeFiles/kinect2_registration.dir/flags.make
CMakeFiles/kinect2_registration.dir/src/depth_registration_opencl.cpp.o: /home/kal5-2/rammbo/src/kinect2_registration/src/depth_registration_opencl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kal5-2/rammbo/build/kinect2_registration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/kinect2_registration.dir/src/depth_registration_opencl.cpp.o"
	/usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kinect2_registration.dir/src/depth_registration_opencl.cpp.o -c /home/kal5-2/rammbo/src/kinect2_registration/src/depth_registration_opencl.cpp

CMakeFiles/kinect2_registration.dir/src/depth_registration_opencl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kinect2_registration.dir/src/depth_registration_opencl.cpp.i"
	/usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kal5-2/rammbo/src/kinect2_registration/src/depth_registration_opencl.cpp > CMakeFiles/kinect2_registration.dir/src/depth_registration_opencl.cpp.i

CMakeFiles/kinect2_registration.dir/src/depth_registration_opencl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kinect2_registration.dir/src/depth_registration_opencl.cpp.s"
	/usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kal5-2/rammbo/src/kinect2_registration/src/depth_registration_opencl.cpp -o CMakeFiles/kinect2_registration.dir/src/depth_registration_opencl.cpp.s

# Object files for target kinect2_registration
kinect2_registration_OBJECTS = \
"CMakeFiles/kinect2_registration.dir/src/kinect2_registration.cpp.o" \
"CMakeFiles/kinect2_registration.dir/src/depth_registration_cpu.cpp.o" \
"CMakeFiles/kinect2_registration.dir/src/depth_registration_opencl.cpp.o"

# External object files for target kinect2_registration
kinect2_registration_EXTERNAL_OBJECTS =

/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: CMakeFiles/kinect2_registration.dir/src/kinect2_registration.cpp.o
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: CMakeFiles/kinect2_registration.dir/src/depth_registration_cpu.cpp.o
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: CMakeFiles/kinect2_registration.dir/src/depth_registration_opencl.cpp.o
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: CMakeFiles/kinect2_registration.dir/build.make
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtros/lib/libroscpp.so
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtros/lib/librosconsole.so
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtros/lib/librosconsole_log4cxx.so
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtros/lib/librosconsole_backend_interface.so
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtros/lib/libroscpp_serialization.so
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtros/lib/libxmlrpcpp.so
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtros/lib/librostime.so
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtros/lib/libcpp_common.so
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_cudabgsegm.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_cudaobjdetect.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_cudastereo.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_stitching.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_superres.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_videostab.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_aruco.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_bgsegm.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_bioinspired.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_ccalib.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_cvv.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_dnn_objdetect.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_dpm.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_face.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_freetype.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_fuzzy.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_hdf.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_hfs.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_img_hash.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_line_descriptor.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_optflow.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_reg.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_rgbd.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_saliency.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_sfm.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_stereo.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_structured_light.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_surface_matching.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_tracking.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_xfeatures2d.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_ximgproc.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_xobjdetect.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_xphoto.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /usr/lib/x86_64-linux-gnu/libOpenCL.so
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_cudafeatures2d.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_cudacodec.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_cudaoptflow.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_cudalegacy.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_cudawarping.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_shape.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_viz.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_phase_unwrapping.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_video.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_datasets.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_plot.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_text.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_dnn.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_ml.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_objdetect.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_calib3d.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_features2d.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_flann.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_highgui.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_videoio.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_imgcodecs.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_photo.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_cudaimgproc.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_cudafilters.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_cudaarithm.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_imgproc.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_core.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: /opt/mrtsoftware/release/lib/libopencv_cudev.so.3.4.5
/home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so: CMakeFiles/kinect2_registration.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kal5-2/rammbo/build/kinect2_registration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library /home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kinect2_registration.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/kinect2_registration.dir/build: /home/kal5-2/rammbo/devel/.private/kinect2_registration/lib/libkinect2_registration.so

.PHONY : CMakeFiles/kinect2_registration.dir/build

CMakeFiles/kinect2_registration.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/kinect2_registration.dir/cmake_clean.cmake
.PHONY : CMakeFiles/kinect2_registration.dir/clean

CMakeFiles/kinect2_registration.dir/depend:
	cd /home/kal5-2/rammbo/build/kinect2_registration && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kal5-2/rammbo/src/kinect2_registration /home/kal5-2/rammbo/src/kinect2_registration /home/kal5-2/rammbo/build/kinect2_registration /home/kal5-2/rammbo/build/kinect2_registration /home/kal5-2/rammbo/build/kinect2_registration/CMakeFiles/kinect2_registration.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/kinect2_registration.dir/depend

