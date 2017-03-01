FROM microsoft/dotnet-framework

WORKDIR /net-app

ADD ./bin/Release .
ADD ./healthcheck.ps1 .

EXPOSE 8080

HEALTHCHECK --interval=1m --timeout=3s \
  CMD powershell.exe ./healthcheck.ps1 http://localhost:8080/api/healthcheck

CMD time-server.exe