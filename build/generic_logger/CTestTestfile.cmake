# CMake generated Testfile for 
# Source directory: /home/kal5-2/rammbo/src/generic_logger
# Build directory: /home/kal5-2/rammbo/build/generic_logger
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_generic_logger_gtest_generic_logger-test_generic_logger-test "/home/kal5-2/rammbo/build/generic_logger/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python2" "/opt/mrtros/share/catkin/cmake/test/run_tests.py" "/home/kal5-2/rammbo/build/generic_logger/test_results/generic_logger/gtest-generic_logger-test_generic_logger-test.xml" "--working-dir" "/home/kal5-2/rammbo/src/generic_logger/test" "--return-code" "/home/kal5-2/rammbo/devel/.private/generic_logger/lib/generic_logger/generic_logger-test_generic_logger-test --gtest_output=xml:/home/kal5-2/rammbo/build/generic_logger/test_results/generic_logger/gtest-generic_logger-test_generic_logger-test.xml")
set_tests_properties(_ctest_generic_logger_gtest_generic_logger-test_generic_logger-test PROPERTIES  _BACKTRACE_TRIPLES "/opt/mrtros/share/catkin/cmake/test/tests.cmake;143;add_test;/opt/mrtros/share/catkin/cmake/test/gtest.cmake;89;catkin_run_tests_target;/opt/mrtros/share/catkin/cmake/test/gtest.cmake;28;_catkin_add_google_test;/home/kal5-2/rammbo/devel/share/mrt_cmake_modules/cmake/mrt_cmake_modules-extras.cmake;939;catkin_add_gtest;/home/kal5-2/rammbo/src/generic_logger/CMakeLists.txt;91;mrt_add_tests;/home/kal5-2/rammbo/src/generic_logger/CMakeLists.txt;0;")
add_test(_ctest_generic_logger_nosetests_test "/home/kal5-2/rammbo/build/generic_logger/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python2" "/opt/mrtros/share/catkin/cmake/test/run_tests.py" "/home/kal5-2/rammbo/build/generic_logger/test_results/generic_logger/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/kal5-2/rammbo/build/generic_logger/test_results/generic_logger" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/kal5-2/rammbo/src/generic_logger/test --with-xunit --xunit-file=/home/kal5-2/rammbo/build/generic_logger/test_results/generic_logger/nosetests-test.xml")
set_tests_properties(_ctest_generic_logger_nosetests_test PROPERTIES  _BACKTRACE_TRIPLES "/opt/mrtros/share/catkin/cmake/test/tests.cmake;143;add_test;/opt/mrtros/share/catkin/cmake/test/nosetests.cmake;83;catkin_run_tests_target;/home/kal5-2/rammbo/devel/share/mrt_cmake_modules/cmake/mrt_cmake_modules-extras.cmake;988;catkin_add_nosetests;/home/kal5-2/rammbo/src/generic_logger/CMakeLists.txt;92;mrt_add_nosetests;/home/kal5-2/rammbo/src/generic_logger/CMakeLists.txt;0;")
subdirs("gtest")
