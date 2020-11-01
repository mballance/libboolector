
message("Patching boolector: PATCH_DIR=${PATCH_DIR} CMAKE_CURRENT_SOURCE_DIR=${CMAKE_CURRENT_SOURCE_DIR}")

execute_process(
	COMMAND git apply --reject --whitespace=fix ${PATCH_DIR}/boolector/boolector.diff
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
	)

