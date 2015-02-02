# Dockerised GO
===========
Dockerised gocd

##Issues

* MISC
** Why does it take so long to start 
  At the moment it takes between 3-6 minutes between starting and being able to access go

* AUTOSTART
** Cant run agents in different container only in same
  Cannot access server from other container but works well in the same container over localhost 
  WHY????? 

** (SOLVED) How to autoconnect agent to the server 
  http://www.thoughtworks.com/products/docs/go/12.4/help/agent_auto_register.html

* BACKUPS
** (SOLVED) How to store all the configurations and data
  http://www.thoughtworks.com/products/docs/go/12.4/help/one_click_backup.html
  Maping a backup volume when starting

** How do we automatically make periodic backups 
  The only way to take a backup seem to be manually could we use cron

** How do we automatically load backup data  
  Would be nice if we could choose to load a backup when starting a clean container

* BUILD 
** How to integrate with Maven 
  http://www.thoughtworks.com/insights/blog/continuous-delivery-maven-and-go-maven-central
  http://support.thoughtworks.com/entries/20074167-Using-Maven-with-Go
