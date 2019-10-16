execute_process(COMMAND "/home/kal5-2/rammbo/build/mrt_cmake_modules/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/kal5-2/rammbo/build/mrt_cmake_modules/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
