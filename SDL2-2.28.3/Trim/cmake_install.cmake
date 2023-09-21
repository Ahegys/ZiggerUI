# Install script for directory: /home/akhashi/Projects/zigUiLib/SDL2-2.28.3

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/arm-linux-gnueabihf-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/libSDL2-2.0.so.0.2800.3"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/libSDL2-2.0.so.0"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.so.0.2800.3"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.so.0"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/arm-linux-gnueabihf-strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/libSDL2-2.0.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/arm-linux-gnueabihf-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/libSDL2main.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/libSDL2.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/libSDL2_test.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake"
         "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2Targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2Targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2Targets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake"
         "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake"
         "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake"
         "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/SDL2Config.cmake"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/SDL2ConfigVersion.cmake"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/cmake/sdlfind.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_assert.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_atomic.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_audio.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_bits.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_blendmode.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_clipboard.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_copying.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_cpuinfo.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_egl.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_endian.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_error.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_events.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_filesystem.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_gamecontroller.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_gesture.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_guid.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_haptic.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_hidapi.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_hints.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_joystick.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_keyboard.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_keycode.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_loadso.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_locale.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_log.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_main.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_messagebox.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_metal.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_misc.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_mouse.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_mutex.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_name.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_opengl.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_opengl_glext.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_opengles.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_opengles2.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_opengles2_gl2.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_opengles2_gl2ext.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_opengles2_gl2platform.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_opengles2_khrplatform.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_pixels.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_platform.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_power.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_quit.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_rect.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_render.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_rwops.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_scancode.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_sensor.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_shape.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_stdinc.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_surface.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_system.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_syswm.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_test.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_test_assert.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_test_common.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_test_compare.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_test_crc32.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_test_font.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_test_fuzzer.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_test_harness.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_test_images.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_test_log.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_test_md5.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_test_memory.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_test_random.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_thread.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_timer.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_touch.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_types.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_version.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_video.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/SDL_vulkan.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/begin_code.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/include/close_code.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/include/SDL2/SDL_revision.h"
    "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/include-config-/SDL2/SDL_config.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/SDL2" TYPE FILE FILES "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/LICENSE.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/sdl2.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  
            execute_process(COMMAND /usr/bin/cmake -E create_symlink
              "libSDL2-2.0.so" "libSDL2.so"
              WORKING_DIRECTORY "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/libSDL2.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/sdl2-config")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aclocal" TYPE FILE FILES "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/sdl2.m4")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/akhashi/Projects/zigUiLib/SDL2-2.28.3/Trim/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
