# deluge-gtk thin client 1.3.15 docker file

## overview
this is a docker container for running the deluge-gtk 1.3.15 gui as a thin client. 
i wrote this because i have a rpi4 running deluge 1.3.15 and use a manjaro 
linux vm as where i do the bulk of my work, but manjaro has already moved 
onto deluge 2 and python 3. 

## how to build
docker build . --tag wow:v1

## how to run 
docker run -it --rm --network=host -e DISPLAY=$DISPLAY wow:v1 deluge-gtk
(you can also mount a persistent config directory if you want, mount a directory to /root/.config/deluge/ for persistent gtkui configs)
docker run -it --rm --network=host -e DISPLAY=$DISPLAY -v /full/path/to/gtkui-config/deluge/:/root/.config/deluge/ wow:v1 deluge-gtk
