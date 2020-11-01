
message("Patching cadical: PATCH_DIR=${PATCH_DIR} CMAKE_CURRENT_SOURCE_DIR=${CMAKE_CURRENT_SOURCE_DIR}")

file(COPY 
  ${PATCH_DIR}/cadical/CMakeLists.txt 
  DESTINATION 
  ${CMAKE_CURRENT_SOURCE_DIR}
)

file(WRITE
  ${CMAKE_CURRENT_SOURCE_DIR}/src/build.hpp
  "")

execute_process(
	COMMAND git apply --reject --whitespace=fix ${PATCH_DIR}/cadical/cadical.patch
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
	)

