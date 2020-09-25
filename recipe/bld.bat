mkdir build
if errorlevel 1 exit 1
cd build
if errorlevel 1 exit 1
cmake ^
    -G "%CMAKE_GEN%" ^
    -DCMAKE_CXX_STANDARD=14 ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    ..
if errorlevel 1 exit 1
cmake --build . --config Release --target install
if errorlevel 1 exit 1
ctest
if errorlevel 1 exit 1
