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
CMAKE_SOURCE_DIR = /home/kal5-2/rammbo/src/stargazer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kal5-2/rammbo/build/stargazer

# Include any dependencies generated for this target.
include CMakeFiles/stargazer-test_landmark-test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/stargazer-test_landmark-test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/stargazer-test_landmark-test.dir/flags.make

CMakeFiles/stargazer-test_landmark-test.dir/test/test_landmark.cpp.o: CMakeFiles/stargazer-test_landmark-test.dir/flags.make
CMakeFiles/stargazer-test_landmark-test.dir/test/test_landmark.cpp.o: /home/kal5-2/rammbo/src/stargazer/test/test_landmark.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kal5-2/rammbo/build/stargazer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/stargazer-test_landmark-test.dir/test/test_landmark.cpp.o"
	/usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stargazer-test_landmark-test.dir/test/test_landmark.cpp.o -c /home/kal5-2/rammbo/src/stargazer/test/test_landmark.cpp

CMakeFiles/stargazer-test_landmark-test.dir/test/test_landmark.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stargazer-test_landmark-test.dir/test/test_landmark.cpp.i"
	/usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kal5-2/rammbo/src/stargazer/test/test_landmark.cpp > CMakeFiles/stargazer-test_landmark-test.dir/test/test_landmark.cpp.i

CMakeFiles/stargazer-test_landmark-test.dir/test/test_landmark.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stargazer-test_landmark-test.dir/test/test_landmark.cpp.s"
	/usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kal5-2/rammbo/src/stargazer/test/test_landmark.cpp -o CMakeFiles/stargazer-test_landmark-test.dir/test/test_landmark.cpp.s

# Object files for target stargazer-test_landmark-test
stargazer__test_landmark__test_OBJECTS = \
"CMakeFiles/stargazer-test_landmark-test.dir/test/test_landmark.cpp.o"

# External object files for target stargazer-test_landmark-test
stargazer__test_landmark__test_EXTERNAL_OBJECTS =

/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: CMakeFiles/stargazer-test_landmark-test.dir/test/test_landmark.cpp.o
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: CMakeFiles/stargazer-test_landmark-test.dir/build.make
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /home/kal5-2/rammbo/devel/.private/stargazer/lib/libstargazer.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libyaml-cpp.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_math_c99l.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_wserialization.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_math_tr1l.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_random.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_log_setup.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_prg_exec_monitor.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_wave.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_math_c99.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_locale.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_timer.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_math_tr1.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_graph.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_math_tr1f.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_math_c99f.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_log.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libceres.so.2.0.0
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_cudabgsegm.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_cudaobjdetect.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_cudastereo.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_stitching.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_superres.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_videostab.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_aruco.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_bgsegm.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_bioinspired.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_ccalib.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_cvv.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_dnn_objdetect.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_dpm.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_face.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_freetype.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_fuzzy.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_hdf.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_hfs.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_img_hash.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_line_descriptor.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_optflow.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_reg.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_rgbd.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_saliency.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_sfm.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_stereo.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_structured_light.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_surface_matching.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_tracking.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_xfeatures2d.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_ximgproc.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_xobjdetect.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_xphoto.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: gtest/googlemock/gtest/libgtest_main.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libglog.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_cudafeatures2d.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_cudacodec.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_cudaoptflow.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_cudalegacy.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_cudawarping.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /usr/lib/x86_64-linux-gnu/libgflags.so.2.2.1
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_viz.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_phase_unwrapping.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_datasets.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_plot.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_text.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_dnn.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_ml.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_shape.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_video.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_objdetect.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_calib3d.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_features2d.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_flann.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_highgui.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_videoio.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_imgcodecs.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_photo.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_cudaimgproc.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_cudafilters.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_cudaarithm.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_imgproc.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_core.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: /opt/mrtsoftware/release/lib/libopencv_cudev.so.3.4.5
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: gtest/googlemock/gtest/libgtest.so
/home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test: CMakeFiles/stargazer-test_landmark-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kal5-2/rammbo/build/stargazer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stargazer-test_landmark-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/stargazer-test_landmark-test.dir/build: /home/kal5-2/rammbo/devel/.private/stargazer/lib/stargazer/stargazer-test_landmark-test

.PHONY : CMakeFiles/stargazer-test_landmark-test.dir/build

CMakeFiles/stargazer-test_landmark-test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/stargazer-test_landmark-test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/stargazer-test_landmark-test.dir/clean

CMakeFiles/stargazer-test_landmark-test.dir/depend:
	cd /home/kal5-2/rammbo/build/stargazer && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kal5-2/rammbo/src/stargazer /home/kal5-2/rammbo/src/stargazer /home/kal5-2/rammbo/build/stargazer /home/kal5-2/rammbo/build/stargazer /home/kal5-2/rammbo/build/stargazer/CMakeFiles/stargazer-test_landmark-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/stargazer-test_landmark-test.dir/depend
