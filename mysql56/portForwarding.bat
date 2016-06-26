set VBOX_HOME=C:\Program Files\Oracle\VirtualBox
"%VBOX_HOME%\VBoxManage" controlvm "default" natpf1 "mysql,tcp,127.0.0.1,3306,,13306"
