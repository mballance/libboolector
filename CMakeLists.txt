
cmake_minimum_required(VERSION 3.11)

project(pyboolector)

include (ExternalProject)

ExternalProject_Add(cadical
  PREFIX cadical
  GIT_REPOSITORY https://github.com/arminbiere/cadical.git
  PATCH_COMMAND cmake -DPATCH_DIR=${CMAKE_CURRENT_SOURCE_DIR}/patches -P ${CMAKE_CURRENT_SOURCE_DIR}/patches/cadical/cadical.cmake
  CMAKE_CACHE_ARGS
    -DCMAKE_C_COMPILER:STRING=${CMAKE_C_COMPILER}
    -DCMAKE_CXX_COMPILER:STRING=${CMAKE_CXX_COMPILER}
    -DBUILD_SHARED_LIBS:BOOL=${BUILD_SHARED_LIBS}
    -DCMAKE_INSTALL_PREFIX:PATH=${CMAKE_CURRENT_BINARY_DIR}
  )

ExternalProject_Add(btor2tools
  PREFIX btor2tools
  GIT_REPOSITORY https://github.com/boolector/btor2tools.git
  PATCH_COMMAND cmake -DPATCH_DIR=${CMAKE_CURRENT_SOURCE_DIR}/patches -P ${CMAKE_CURRENT_SOURCE_DIR}/patches/btor2tools/btor2tools.cmake
  CMAKE_CACHE_ARGS
    -DCMAKE_C_COMPILER:STRING=${CMAKE_C_COMPILER}
    -DCMAKE_CXX_COMPILER:STRING=${CMAKE_CXX_COMPILER}
    -DBUILD_SHARED_LIBS:BOOL=${BUILD_SHARED_LIBS}
    -DCMAKE_INSTALL_PREFIX:PATH=${CMAKE_CURRENT_BINARY_DIR}
  )


