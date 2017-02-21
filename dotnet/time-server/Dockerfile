FROM microsoft/dotnet:nanoserver-runtime

WORKDIR /dotnet-app

ADD ./bin/Publish .

EXPOSE 8080

ENTRYPOINT ["dotnet", "time-server.dll"]