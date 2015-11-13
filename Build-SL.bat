@echo off

set fdir=%WINDIR%\Microsoft.NET\Framework64

if not exist %fdir% (
	set fdir=%WINDIR%\Microsoft.NET\Framework
)

set msbuild=%fdir%\v4.0.30319\msbuild.exe

%msbuild% SuperSocket.ClientEngine.SL40.csproj /p:Configuration=Debug /t:Clean;Rebuild /p:OutputPath=..\bin\sl40\Debug
FOR /F "tokens=*" %%G IN ('DIR /B /AD /S obj') DO RMDIR /S /Q "%%G"

%msbuild% SuperSocket.ClientEngine.SL40.csproj /p:Configuration=Release /t:Clean;Rebuild /p:OutputPath=..\bin\sl40\Release
FOR /F "tokens=*" %%G IN ('DIR /B /AD /S obj') DO RMDIR /S /Q "%%G"

%msbuild% SuperSocket.ClientEngine.SL50.csproj /p:Configuration=Debug /t:Clean;Rebuild /p:OutputPath=..\bin\sl50\Debug
FOR /F "tokens=*" %%G IN ('DIR /B /AD /S obj') DO RMDIR /S /Q "%%G"

%msbuild% SuperSocket.ClientEngine.SL50.csproj /p:Configuration=Release /t:Clean;Rebuild /p:OutputPath=..\bin\sl50\Release
FOR /F "tokens=*" %%G IN ('DIR /B /AD /S obj') DO RMDIR /S /Q "%%G"

pause