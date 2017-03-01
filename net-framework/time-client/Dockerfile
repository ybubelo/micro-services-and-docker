FROM microsoft/dotnet-framework

WORKDIR /net-app

ADD ./bin/Release .

CMD time-client.exe %SERVER_HOST% %SERVER_PORT%