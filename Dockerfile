FROM fedora 
RUN yum -y update
RUN yum -y install java-1.7.0-openjdk java-1.7.0-openjdk-devel.x86_64
ADD go-agent-14.2.0-377.noarch.rpm /root/
ADD go-server-14.2.0-377.noarch.rpm /root/
RUN yum -y install which 
RUN yum -y install xerces-j2 
RUN yum -y install /root/go-*.rpm
RUN yum -y install git

