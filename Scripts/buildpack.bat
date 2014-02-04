@ECHO OFF
SETLOCAL
SET VERSION=%1
SET NUGET=.\..\.nuget\nuget.exe

msbuild updateversionnumber.proj /p:AsmVersion=%VERSION%
msbuild build.proj /t:BuildRelease 
%NUGET% pack Mapsui.nuspec -Version %VERSION% -outputdirectory .\..\Release


