#!/bin/bash
/usr/share/go-agent/agent.sh && tail -F /var/log/go-agent/go-agent-launcher.log /var/log/go-agent/go-agent-bootstrapper.log