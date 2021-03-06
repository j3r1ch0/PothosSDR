############################################################
## Pothos SDR environment build sub-script
##
## This script handles python config and registry paths.
##
## * python2.7
## * python3.5
############################################################

set(PYTHON2_EXECUTABLE C:/Python27/python.exe)
set(PYTHON2_INCLUDE_DIR C:/Python27/include)
set(PYTHON2_LIBRARY C:/Python27/libs/python27.lib)
set(PYTHON2_INSTALL_DIR lib/python2.7/site-packages)

set(PYTHON3_EXECUTABLE C:/Python35/python.exe)
set(PYTHON3_INCLUDE_DIR C:/Python35/include)
set(PYTHON3_LIBRARY C:/Python35/libs/python35.lib)
set(PYTHON3_INSTALL_DIR lib/python3.5/site-packages)

set(CPACK_NSIS_EXTRA_INSTALL_COMMANDS "${CPACK_NSIS_EXTRA_INSTALL_COMMANDS}
SetRegView 64
WriteRegStr HKEY_LOCAL_MACHINE \\\"SOFTWARE\\\\Python\\\\PythonCore\\\\2.7\\\\PythonPath\\\\${PROJECT_NAME}\\\" \\\"\\\" \\\"$INSTDIR\\\\lib\\\\python2.7\\\\site-packages\\\"
WriteRegStr HKEY_LOCAL_MACHINE \\\"SOFTWARE\\\\Python\\\\PythonCore\\\\3.5\\\\PythonPath\\\\${PROJECT_NAME}\\\" \\\"\\\" \\\"$INSTDIR\\\\lib\\\\python3.5\\\\site-packages\\\"
")

set(CPACK_NSIS_EXTRA_UNINSTALL_COMMANDS "${CPACK_NSIS_EXTRA_UNINSTALL_COMMANDS}
SetRegView 64
DeleteRegKey HKEY_LOCAL_MACHINE \\\"SOFTWARE\\\\Python\\\\PythonCore\\\\2.7\\\\PythonPath\\\\${PROJECT_NAME}\\\"
DeleteRegKey HKEY_LOCAL_MACHINE \\\"SOFTWARE\\\\Python\\\\PythonCore\\\\3.5\\\\PythonPath\\\\${PROJECT_NAME}\\\"
")

set(GIT_PATCH_HELPER ${PYTHON3_EXECUTABLE} ${PROJECT_SOURCE_DIR}/Scripts/GitPatchHelper.py)
