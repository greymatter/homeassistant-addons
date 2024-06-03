# isy994-adminconsole-docker

Docker running ISY994 Java Admin Console. You can access your console using VNC or Guacamole. 

### Docker Variables & Port

#### Ports 
5800 : Port used to access the application's GUI via the web interface

5900 : Port used to access the application's GUI via the VNC protocol

#### Variable
ISY994_HOST : IP address of ISY994

#### Based on the project 
https://github.com/jlesage/docker-baseimage-gui
https://git.bernhard-ehlers.de/ehlers/gns3-docker-images/src/branch/master/ipterm/java/Dockerfile
