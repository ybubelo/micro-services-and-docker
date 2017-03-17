# micro-services-and-docker
This is an example of building and running dotnet and Java REST services (time-server) and client applications (time-client) in Windows and Linux containers.

## Prerequisites
- Windows 10 Pro 64bit. See {https://docs.docker.com/docker-for-windows/install/}
- Microsoft PowerShell
- .NET Core SDK {https://go.microsoft.com/fwlink/?LinkID=827524}
- Java 8
- Maven
- Docker for Windows {https://download.docker.com/win/beta/InstallDocker.msi}
- Download jre-8u121-linux-x64.rpm and save to /Java/base-image. See {http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html}

## Building and starting Linux containers with docker-compose
- Switch to Linux containers
- Open PowerShell console
- Change current directory to "java"
- Execute .\build.ps1
- Execute docker-compose up

## Building and starting Windows containers with docker-compose
- Switch to Windows containers
- Open PowerShell console
- Change current directory to "dotnet"
- Execute .\build.ps1
- Execute docker-compose up

## Stopping containers
- Press Ctrl+C to return to PowerShell
- Execute docker-compose rm

## Example: deploy services to swarm on Linux
```
[root@host ~]# cd /micro-services-and-docker/java

[root@host java]# bash build.sh

[root@host java]# dcoker swarm init

[root@host java]# docker deploy -c stack.yml mystack

[root@host java]# docker service ls
ID            NAME            MODE        REPLICAS  IMAGE
90g8vcdr9f63  mystack_client  replicated  1/1       timeclient
wfb2e2hgt2uw  mystack_server  replicated  1/1       timeserver

[root@host java]# docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                   PORTS               NAMES
bd2564812a96        timeclient:latest   "/bin/sh -c 'java ..."   23 seconds ago      Up 18 seconds                                mystack_client.1.b9neid51l12l14rtcgjij4bt4
7c8bbd133bf8        timeserver:latest   "/bin/sh -c 'java ..."   5 minutes ago       Up 5 minutes (healthy)   8080/tcp            mystack_server.1.d2pi5qz3mg4jmfbqzoiat2e90

[root@dockerhost1 java]# docker logs bd2564812a96
I am Java!
GET http://server:8080/api/servertime
{"serverTime":"2017-03-17T18:24:51.473+0000"}

[root@host java]# docker service rm mystack_client
[root@host java]# docker service rm mystack_server
[root@host java]# docker network rm mystack_default

[root@host java]# docker swarm leave --force
```

## Example: build and compose on WIndows
```
PS C:\Projects\micro-services-and-docker\Java> .\build.ps1
...
PS C:\Projects\micro-services-and-docker\java> docker-compose up
Creating time_server
Creating time_client
Attaching to time_server, time_client
...
time_client | I am Java!
time_client | GET http://server:8080/api/servertime
time_client | {"serverTime":"2017-02-22T02:51:17.170+0000"}
Gracefully stopping... (press Ctrl+C again to force)
Stopping time_client ... done
Stopping time_server ... done
PS C:\Projects\micro-services-and-docker\java> docker-compose rm
Going to remove time_client, time_server
Are you sure? [yN] y
Removing time_client ... done
Removing time_server ... done
PS C:\Projects\micro-services-and-docker\java>
```
