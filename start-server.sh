#!/bin/bash
/usr/share/go-server/server.sh && tail -F /var/log/go-server/go-server.log
