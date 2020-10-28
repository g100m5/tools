#!/usr/bin/env expect

set username your_username
set pass your_pass
set host your_host
set port your_port

spawn snx -s ${host} -u ${username} -p ${port}
expect "Please enter your password:" { send "${pass}\r" }
interact

