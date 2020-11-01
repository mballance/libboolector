
message("Hello ${MESSAGE}")
message("${CMAKE_CURRENT_SOURCE_DIR}")
message("${CMAKE_CURRENT_BINARY_DIR}")

file(COPY 
  ${PATCH_DIR}/cadical/CMakeLists.txt 
  DESTINATION 
  ${CMAKE_CURRENT_SOURCE_DIR}
)

file(WRITE
  ${CMAKE_CURRENT_SOURCE_DIR}/src/build.hpp
  "")

execute_process(
	COMMAND git apply ${PATCH_DIR}/cadical/cadical.patch
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
	)

