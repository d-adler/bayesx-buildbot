if exist slave rmdir /S /Q slave
buildslave create-slave --keepalive=10 --maxdelay=10 slave master.bb:9989 %1 %1
@ECHO OFF
REM C:\Tools\Python2\scripts\buildslave create-slave --keepalive=600 --maxdelay=3 slave 10.0.2.2:9989 %1 %1
REM C:\Tools\Python2\scripts\buildslave create-slave --usepty=1 --keepalive=600 --maxdelay=3 slave 10.0.2.2:9989 %1 %1
REM buildslave stop slave

