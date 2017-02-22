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

## Building and starting Linux containers
- Switch to Linux containers
- Open PowerShell console
- Change current directory to "java"
- Execute .\build.ps1
- Execute docker-compose up

## Building and starting Windows containers
- Switch to Windows containers
- Open PowerShell console
- Change current directory to "dotnet"
- Execute .\build.ps1
- Execute docker-compose up

## Stopping containers
- Press Ctrl+C to return to PowerShell
- Execute docker-compose rm

## Example
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
