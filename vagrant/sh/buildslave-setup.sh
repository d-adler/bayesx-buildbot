buildslave create-slave --keepalive=10 --maxdelay=10 slave master.bb `uname -n` `uname -n`
buildslave restart slave

