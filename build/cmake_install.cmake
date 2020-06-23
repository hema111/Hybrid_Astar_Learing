# Install script for directory: /home/estrong/work/demo_hybrid_astar/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/estrong/work/demo_hybrid_astar/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/estrong/work/demo_hybrid_astar/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/estrong/work/demo_hybrid_astar/install" TYPE PROGRAM FILES "/home/estrong/work/demo_hybrid_astar/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/estrong/work/demo_hybrid_astar/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/estrong/work/demo_hybrid_astar/install" TYPE PROGRAM FILES "/home/estrong/work/demo_hybrid_astar/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/estrong/work/demo_hybrid_astar/install/setup.bash;/home/estrong/work/demo_hybrid_astar/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/estrong/work/demo_hybrid_astar/install" TYPE FILE FILES
    "/home/estrong/work/demo_hybrid_astar/build/catkin_generated/installspace/setup.bash"
    "/home/estrong/work/demo_hybrid_astar/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/estrong/work/demo_hybrid_astar/install/setup.sh;/home/estrong/work/demo_hybrid_astar/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/estrong/work/demo_hybrid_astar/install" TYPE FILE FILES
    "/home/estrong/work/demo_hybrid_astar/build/catkin_generated/installspace/setup.sh"
    "/home/estrong/work/demo_hybrid_astar/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/estrong/work/demo_hybrid_astar/install/setup.zsh;/home/estrong/work/demo_hybrid_astar/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/estrong/work/demo_hybrid_astar/install" TYPE FILE FILES
    "/home/estrong/work/demo_hybrid_astar/build/catkin_generated/installspace/setup.zsh"
    "/home/estrong/work/demo_hybrid_astar/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/estrong/work/demo_hybrid_astar/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/estrong/work/demo_hybrid_astar/install" TYPE FILE FILES "/home/estrong/work/demo_hybrid_astar/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/estrong/work/demo_hybrid_astar/build/gtest/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/navigation/navigation/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/navigation_msgs/move_base_msgs/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/navigation/map_server/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/navigation_msgs/map_msgs/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/navigation/amcl/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/hybrid_astar/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/navigation/robot_pose_ekf/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/navigation/fake_localization/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/navigation/voxel_grid/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/navigation/costmap_2d/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/navigation/nav_core/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/navigation/base_local_planner/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/navigation/carrot_planner/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/navigation/clear_costmap_recovery/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/navigation/dwa_local_planner/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/navigation/move_slow_and_clear/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/navigation/navfn/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/navigation/global_planner/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/navigation/rotate_recovery/cmake_install.cmake")
  include("/home/estrong/work/demo_hybrid_astar/build/navigation/move_base/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/estrong/work/demo_hybrid_astar/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
