#!/bin/bash
/usr/share/go-agent/agent.sh && tail -F /var/log/go-agent/go-agent.log
