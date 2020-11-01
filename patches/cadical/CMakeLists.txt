
cmake_minimum_required(VERSION 3.11)

project(cadical)

file(GLOB libcadical_SRC 
	src/*.cpp
	src/*.h)
list (REMOVE_ITEM libcadical_SRC ${CMAKE_CURRENT_SOURCE_DIR}/src/cadical.cpp)
list (REMOVE_ITEM libcadical_SRC ${CMAKE_CURRENT_SOURCE_DIR}/src/mobical.cpp)
list (REMOVE_ITEM libcadical_SRC ${CMAKE_CURRENT_SOURCE_DIR}/src/signal.cpp)
list (REMOVE_ITEM libcadical_SRC ${CMAKE_CURRENT_SOURCE_DIR}/src/resources.cpp)

add_library(cadical ${libcadical_SRC})
#add_executable(cadical src/cadical.cpp)
#add_executable(mobical src/mobical.cpp)

add_definitions(-DNUNLOCKED)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src)
install(TARGETS cadical 
	DESTINATION lib)


