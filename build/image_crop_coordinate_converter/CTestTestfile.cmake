# CMake generated Testfile for 
# Source directory: /home/kal5-2/rammbo/src/image_crop_coordinate_converter
# Build directory: /home/kal5-2/rammbo/build/image_crop_coordinate_converter
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_image_crop_coordinate_converter_gtest_image_crop_coordinate_converter-image_crop_coordinate_converter-test "/home/kal5-2/rammbo/build/image_crop_coordinate_converter/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python2" "/opt/mrtros/share/catkin/cmake/test/run_tests.py" "/home/kal5-2/rammbo/build/image_crop_coordinate_converter/test_results/image_crop_coordinate_converter/gtest-image_crop_coordinate_converter-image_crop_coordinate_converter-test.xml" "--working-dir" "/home/kal5-2/rammbo/src/image_crop_coordinate_converter/test" "--return-code" "/home/kal5-2/rammbo/devel/.private/image_crop_coordinate_converter/lib/image_crop_coordinate_converter/image_crop_coordinate_converter-image_crop_coordinate_converter-test --gtest_output=xml:/home/kal5-2/rammbo/build/image_crop_coordinate_converter/test_results/image_crop_coordinate_converter/gtest-image_crop_coordinate_converter-image_crop_coordinate_converter-test.xml")
set_tests_properties(_ctest_image_crop_coordinate_converter_gtest_image_crop_coordinate_converter-image_crop_coordinate_converter-test PROPERTIES  _BACKTRACE_TRIPLES "/opt/mrtros/share/catkin/cmake/test/tests.cmake;143;add_test;/opt/mrtros/share/catkin/cmake/test/gtest.cmake;89;catkin_run_tests_target;/opt/mrtros/share/catkin/cmake/test/gtest.cmake;28;_catkin_add_google_test;/home/kal5-2/rammbo/devel/share/mrt_cmake_modules/cmake/mrt_cmake_modules-extras.cmake;939;catkin_add_gtest;/home/kal5-2/rammbo/src/image_crop_coordinate_converter/CMakeLists.txt;91;mrt_add_tests;/home/kal5-2/rammbo/src/image_crop_coordinate_converter/CMakeLists.txt;0;")
add_test(_ctest_image_crop_coordinate_converter_nosetests_test "/home/kal5-2/rammbo/build/image_crop_coordinate_converter/catkin_generated/env_cached.sh" "/opt/mrtsoftware/release/lib/mrt-build-tools/bin/python2" "/opt/mrtros/share/catkin/cmake/test/run_tests.py" "/home/kal5-2/rammbo/build/image_crop_coordinate_converter/test_results/image_crop_coordinate_converter/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/kal5-2/rammbo/build/image_crop_coordinate_converter/test_results/image_crop_coordinate_converter" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/kal5-2/rammbo/src/image_crop_coordinate_converter/test --with-xunit --xunit-file=/home/kal5-2/rammbo/build/image_crop_coordinate_converter/test_results/image_crop_coordinate_converter/nosetests-test.xml")
set_tests_properties(_ctest_image_crop_coordinate_converter_nosetests_test PROPERTIES  _BACKTRACE_TRIPLES "/opt/mrtros/share/catkin/cmake/test/tests.cmake;143;add_test;/opt/mrtros/share/catkin/cmake/test/nosetests.cmake;83;catkin_run_tests_target;/home/kal5-2/rammbo/devel/share/mrt_cmake_modules/cmake/mrt_cmake_modules-extras.cmake;988;catkin_add_nosetests;/home/kal5-2/rammbo/src/image_crop_coordinate_converter/CMakeLists.txt;92;mrt_add_nosetests;/home/kal5-2/rammbo/src/image_crop_coordinate_converter/CMakeLists.txt;0;")
subdirs("gtest")
