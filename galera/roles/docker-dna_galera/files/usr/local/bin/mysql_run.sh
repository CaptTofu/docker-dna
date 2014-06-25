#!/bin/bash

/usr/local/bin/pyclustercheck -p 9200 &
/usr/sbin/sshd -D &
service mysql start
