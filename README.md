# deluge-gtk thin client 1.3.15 docker file

## overview
this is a docker container for running the deluge-gtk 1.3.15 gui as a thin 
client. i wrote this because i have a rpi4 running deluge daemon 1.3.15 and 
i use a manjaro linux vm as where i do the bulk of my work, but manjaro has 
already moved onto deluge 2 and python 3, but deluge 2 ui is not compatible
with deluge 1.3.15. 

## how to build
make sure docker is installed and dockerd is running so your docker commands work
docker build . --tag wow:v1

## how to run 
docker run -it --rm --network=host -e DISPLAY=$DISPLAY wow:v1 deluge-gtk
(you can also mount a persistent config directory if you want, mount a directory to /root/.config/deluge/ for persistent gtkui configs)
docker run -it --rm --network=host -e DISPLAY=$DISPLAY -v /full/path/to/gtkui-config/deluge/:/root/.config/deluge/ wow:v1 deluge-gtk
