Running Evernote in Docker using wine
====

There are a number of alternatives to accessing Evernote on Linux like Nevernote, Geeknote and Everpad.

As a long time user of Evernote and a Docker enthusiast it made sense to combine the two.  

This work is based on : https://blog.jessfraz.com/post/docker-containers-on-the-desktop/

#Versions

Ubuntu   : 14:04
Evernote : 5.8.13

Wine     : 1.7.4

The wine image is built using : https://registry.hub.docker.com/u/thshaw/wine/dockerfile/

#Usage :

docker run -d -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --name evernote thshaw/evernote

The first time this runs it will run the Evernote setup.  Just login and the sync will start.

To stop the container :

docker stop evernote

To start the container :

docker start evernote

#Notes :

If you see this message : 
Make sure that your X server is running and that $DISPLAY is set correctly.

Run : xhost +


