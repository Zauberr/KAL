# CMake generated Testfile for 
# Source directory: /home/kal5-2/rammbo/src/mrt_image_geometry_ros
# Build directory: /home/kal5-2/rammbo/build/mrt_image_geometry_ros
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_mrt_image_geometry_ros_rostest_test_test_mrt_image_geometry_ros.test "/home/kal5-2/rammbo/build/mrt_image_geometry_ros/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python2" "/opt/mrtros/share/catkin/cmake/test/run_tests.py" "/home/kal5-2/rammbo/build/mrt_image_geometry_ros/test_results/mrt_image_geometry_ros/rostest-test_test_mrt_image_geometry_ros.xml" "--return-code" "/opt/mrtros/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/kal5-2/rammbo/src/mrt_image_geometry_ros --package=mrt_image_geometry_ros --results-filename test_test_mrt_image_geometry_ros.xml --results-base-dir \"/home/kal5-2/rammbo/build/mrt_image_geometry_ros/test_results\" /home/kal5-2/rammbo/src/mrt_image_geometry_ros/test/test_mrt_image_geometry_ros.test ")
set_tests_properties(_ctest_mrt_image_geometry_ros_rostest_test_test_mrt_image_geometry_ros.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/mrtros/share/catkin/cmake/test/tests.cmake;143;add_test;/opt/mrtros/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/opt/mrtros/share/rostest/cmake/rostest-extras.cmake;80;add_rostest;/opt/mrtros/share/rostest/cmake/rostest-extras.cmake;100;_add_rostest_google_test;/home/kal5-2/rammbo/devel/share/mrt_cmake_modules/cmake/mrt_cmake_modules-extras.cmake;870;add_rostest_gtest;/home/kal5-2/rammbo/src/mrt_image_geometry_ros/CMakeLists.txt;115;mrt_add_ros_tests;/home/kal5-2/rammbo/src/mrt_image_geometry_ros/CMakeLists.txt;0;")
add_test(_ctest_mrt_image_geometry_ros_nosetests_test "/home/kal5-2/rammbo/build/mrt_image_geometry_ros/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python2" "/opt/mrtros/share/catkin/cmake/test/run_tests.py" "/home/kal5-2/rammbo/build/mrt_image_geometry_ros/test_results/mrt_image_geometry_ros/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/kal5-2/rammbo/build/mrt_image_geometry_ros/test_results/mrt_image_geometry_ros" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/kal5-2/rammbo/src/mrt_image_geometry_ros/test --with-xunit --xunit-file=/home/kal5-2/rammbo/build/mrt_image_geometry_ros/test_results/mrt_image_geometry_ros/nosetests-test.xml")
set_tests_properties(_ctest_mrt_image_geometry_ros_nosetests_test PROPERTIES  _BACKTRACE_TRIPLES "/opt/mrtros/share/catkin/cmake/test/tests.cmake;143;add_test;/opt/mrtros/share/catkin/cmake/test/nosetests.cmake;83;catkin_run_tests_target;/home/kal5-2/rammbo/devel/share/mrt_cmake_modules/cmake/mrt_cmake_modules-extras.cmake;988;catkin_add_nosetests;/home/kal5-2/rammbo/src/mrt_image_geometry_ros/CMakeLists.txt;117;mrt_add_nosetests;/home/kal5-2/rammbo/src/mrt_image_geometry_ros/CMakeLists.txt;0;")
subdirs("gtest")