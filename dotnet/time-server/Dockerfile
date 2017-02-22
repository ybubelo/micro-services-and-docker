FROM microsoft/dotnet:nanoserver-runtime

WORKDIR /dotnet-app

ADD ./bin/Publish .
ADD ./healthcheck.ps1 .

EXPOSE 8080

HEALTHCHECK --interval=1m --timeout=3s \
  CMD powershell.exe ./healthcheck.ps1 http://localhost:8080/api/healthcheck

CMD dotnet time-server.dll