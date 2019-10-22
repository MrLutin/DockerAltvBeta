# Docker Informations
[![Docker Stars](https://img.shields.io/docker/stars/alfg/nginx-rtmp.svg)](https://hub.docker.com/r/mrlutin/altv-server-beta)
[![Docker Pulls](https://img.shields.io/docker/pulls/alfg/nginx-rtmp.svg)](https://hub.docker.com/r/mrlutin/altv-server-beta)
[![Docker Automated build](https://img.shields.io/docker/automated/alfg/nginx-rtmp.svg)](https://hub.docker.com/r/mrlutin/altv-server-beta/builds/)

# AltV:Server [beta] in a Docker Image
This is a image to run a server instance from AltV in a Docker Container. It is designed to run with a volume, so that resources, config- and logfiles are persistend and mounted to the server filesystem. 

The container starts without example ressources and configs.

## Volume
The volume is structured like this:
```
Volume
    |-> resources   (place your resources here)
    |-> resources-data  (here you can place data generated by your resources)
    |-> logs        (logfiles)
    \-> config      (place your server.cfg here)
```
