#!/bin/bash

docker build -t gocd .

docker rm -f go_server
docker run --name go_server --publish 8153:8153 --publish 8154:8154 -d gocd /root/start-server.sh 
docker exec -d go_server /root/start-agent.sh 

#docker rm -f go_agent_1 go_agent_2 go_agent_3
#docker run --name go_agent_1 --link go_server:go_server -d gocd /root/start-agent.sh 
#docker run --name go_agent_2 --link go_server:go_server -d gocd /root/start-agent.sh 
#docker run --name go_agent_3 --link go_server:go_server -d gocd /root/start-agent.sh 

