execute_process(COMMAND "/home/miguel/catkin_ws/build/vizzy/vizzy_slack/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/miguel/catkin_ws/build/vizzy/vizzy_slack/catkin_generated/python_distutils_install.sh) returned error code ")
endif()