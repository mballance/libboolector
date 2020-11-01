

execute_process(
	COMMAND git apply ${PATCH_DIR}/boolector/boolector.diff
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
	)

