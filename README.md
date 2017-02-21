# micro-services-and-docker

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
- Execute ..\start.ps1

## Building and starting Windows containers
- Switch to Windows containers
- Open PowerShell console
- Change current directory to "dotnet"
- Execute .\build.ps1
- Execute ..\start.ps1

## Stopping containers
- Press Ctrl+C to return to PowerShell
- Execute ..\stop.ps1

Example
-----------

```
PS C:\Projects\micro-services-and-docker\Java> .\build.ps1
PS C:\Projects\micro-services-and-docker\java> ..\start.ps1
69fe658924f32f1d7f15dc2c3c8bf83477a854b51665b934dbc95da46410ee7b
I am Java!
GET http://172.17.0.2:8080/api/servertime
{"serverTime":"2017-02-21T03:08:46.728+0000"}
<Ctrl+C>
PS C:\Projects\micro-services-and-docker\java> ..\stop.ps1
time_client
time_client
time_server
time_server
PS C:\Projects\micro-services-and-docker\java>
```
