@setlocal

set       GIT4_WIN_DIR=C:\Program Files\Git\bin
set DOCKER_TOOLBOX_DIR=C:\programs\DockerToolbox

set VM_NAME=default
set    HERE=%~dp0
cd    %HERE%

cd "%DOCKER_TOOLBOX_DIR%"
docker-machine create              ^
    --driver virtualbox            ^
    --virtualbox-cpu-count "2"     ^
    --virtualbox-disk-size "20000" ^
    --virtualbox-hostonly-cidr "192.168.177.10/24" ^
    %VM_NAME%

cd %HERE%
@endloacal

"%GIT4_WIN_DIR%\bash.exe" --login -i  "%DOCKER_TOOLBOX_DIR%\start.sh"
