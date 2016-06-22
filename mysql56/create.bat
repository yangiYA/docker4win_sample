@setlocale

set           VM_NAME=default
set   THIS_DOCKER_DIR=mysql56

set       GIT4_WIN_DIR=C:\Program Files\Git\bin
set DOCKER_TOOLBOX_DIR=C:\programs\DockerToolbox
set    DOCKER_WORK_DIR=C:\Users\my_docker

set HERE=%~dp0
cd %HERE%



mkdir /p "%DOCKER_WORK_DIR%\%THIS_DOCKER_DIR%"
rem mkdir -p "%USERPROFILE%\mydocker"

rem mklink /J  "%USERPROFILE%\mydocker\%THIS_DOCKER_DIR%"  "%HERE%\%THIS_DOCKER_DIR%"

cd "%DOCKER_TOOLBOX_DIR%"
docker-machine create              ^
    --driver virtualbox            ^
    --virtualbox-cpu-count "2"     ^
    --virtualbox-disk-size "20000" ^
    --virtualbox-hostonly-cidr "192.168.177.10/24" ^
    %VM_NAME%


rem "%GIT4_WIN_DIR%"\bash.exe --login -i 

"%GIT4_WIN_DIR%"\bash.exe --login -i  "%DOCKER_TOOLBOX_DIR%\start.sh"
rem "C:\Program Files\Git\bin\bash.exe" --login -i "C:\programs\DockerToolbox\start.sh"


cd %HERE%
@endloacal
