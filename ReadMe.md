Container to render pages, Raspbery will connect to the container via VNC and just show the pictures.
## Docker container
Launch:
1. build.sh to build image localy
2. run.sh to start the container

## Raspbery client

Install 
1. Openbox - minimal window manager
2. Install and enable nodm - to autoload openbox without authorisation window
3. vncviewer - to connect to the container
4. 

Copy :
1. LinuxClient/autostart to ~/.config/openbox/autostart - this will enable auto start of script to launch vncviewer
2. Edit ip address of the container to connect and copy vncviewer.sh and 172.vnc to home dir
3. cron_checkvncviewer to /etc/cron.d, this script checks if there is no connection to vncserver then it restarts vncviewer - this is to re-connect in case if vnc server temporary unavailable.


