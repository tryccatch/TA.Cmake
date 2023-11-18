set cmake_bin="C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe"

mkdir build64 & pushd build64
%cmake_bin% -G "Visual Studio 17 2022" -A x64 ..
popd
%cmake_bin% --build build64 --config Release
md plugin_lua53\Plugins\x86_64
copy /Y build64\Release\xlua.dll plugin_lua53\Plugins\x86_64\xlua.dll
pause