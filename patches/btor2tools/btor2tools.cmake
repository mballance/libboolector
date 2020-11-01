
message("Patching btor2tools: PATCH_DIR=${PATCH_DIR} CMAKE_CURRENT_SOURCE_DIR=${CMAKE_CURRENT_SOURCE_DIR}")

execute_process(
	COMMAND git apply ${PATCH_DIR}/btor2tools/btor2tools.diff
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
	)

