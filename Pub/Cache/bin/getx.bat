@echo off
rem This file was created by pub v2.18.4.
rem Package: get_cli
rem Version: 1.8.1
rem Executable: getx
rem Script: get
if exist "C:\Users\muhfa\AppData\Local\Pub\Cache\global_packages\get_cli\bin\get.dart-2.18.4.snapshot" (
  call dart "C:\Users\muhfa\AppData\Local\Pub\Cache\global_packages\get_cli\bin\get.dart-2.18.4.snapshot" %*
  rem The VM exits with code 253 if the snapshot version is out-of-date.
  rem If it is, we need to delete it and run "pub global" manually.
  if not errorlevel 253 (
    goto error
  )
  dart pub global run get_cli:get %*
) else (
  dart pub global run get_cli:get %*
)
goto eof
:error
exit /b %errorlevel%
:eof

