# CMake generated Testfile for 
# Source directory: /home/kal5-2/rammbo/src/driver_base/timestamp_tools
# Build directory: /home/kal5-2/rammbo/build/timestamp_tools
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_timestamp_tools_gtest_test_trigger_matcher "/home/kal5-2/rammbo/build/timestamp_tools/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python2" "/opt/mrtros/share/catkin/cmake/test/run_tests.py" "/home/kal5-2/rammbo/build/timestamp_tools/test_results/timestamp_tools/gtest-test_trigger_matcher.xml" "--return-code" "/home/kal5-2/rammbo/devel/.private/timestamp_tools/lib/timestamp_tools/test_trigger_matcher --gtest_output=xml:/home/kal5-2/rammbo/build/timestamp_tools/test_results/timestamp_tools/gtest-test_trigger_matcher.xml")
set_tests_properties(_ctest_timestamp_tools_gtest_test_trigger_matcher PROPERTIES  _BACKTRACE_TRIPLES "/opt/mrtros/share/catkin/cmake/test/tests.cmake;143;add_test;/opt/mrtros/share/catkin/cmake/test/gtest.cmake;89;catkin_run_tests_target;/opt/mrtros/share/catkin/cmake/test/gtest.cmake;28;_catkin_add_google_test;/home/kal5-2/rammbo/src/driver_base/timestamp_tools/CMakeLists.txt;22;catkin_add_gtest;/home/kal5-2/rammbo/src/driver_base/timestamp_tools/CMakeLists.txt;0;")
subdirs("gtest")
