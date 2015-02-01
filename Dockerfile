FROM centos 
RUN yum -y update
RUN yum -y install java-1.7.0-openjdk java-1.7.0-openjdk-devel.x86_64
RUN yum -y install xerces-j2 
RUN yum -y install git

# Tools 
RUN yum -y install net-toos vim which 

# For agent
RUN yum -y install tigervnc-server

ADD start-agent.sh /root/
ADD start-server.sh /root/
RUN chmod u+x /root/start-server.sh
RUN chmod u+x /root/start-agent.sh

ADD go-agent-14.4.0-1356.noarch.rpm /root/
ADD go-server-14.4.0-1356.noarch.rpm /root/

RUN yum -y install /root/go-*.rpm

#ADD go-agent /etc/default/
