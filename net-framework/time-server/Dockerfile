FROM microsoft/dotnet-framework

WORKDIR /net-app

ADD ./bin/Release .
ADD ./healthcheck.ps1 .
RUN netsh http add urlacl url=http://+:8080/ user=\Everyone listen=yes

EXPOSE 8080

HEALTHCHECK --interval=1m --timeout=10s \
  CMD powershell.exe ./healthcheck.ps1 http://localhost:8080/api/healthcheck

CMD time-server.exe