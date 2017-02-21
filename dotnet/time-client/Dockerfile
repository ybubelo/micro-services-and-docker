FROM microsoft/dotnet:nanoserver-runtime

WORKDIR /dotnet-app

ADD ./bin/Publish .

CMD dotnet time-client.dll %SERVER_HOST% %SERVER_PORT%