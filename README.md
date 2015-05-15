Docker windows
==============

Supplies tools and scripts to work with Docker on Windows. You should place
this repository somewhere in your user profile path. Because that path is
automatically shared with the Docker VM.

b2d.ps1
-------

You can use this PowerShell script to start your boot2docker environment.
It is inspired by https://github.com/VonC/b2d .

### docker-compose

The b2d.ps1 script automatically creates an alias "docker-compose" to run 
docker-compose in the boot2docker vm. To use docker-compose you need to 
install it with:

    docker build -t docker-compose github.com/docker/compose
