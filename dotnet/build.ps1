& docker rmi timeserver
& docker rmi timeclient

#& MSBuild.exe Solution.sln /p:Configuration=Debug

Push-Location -Path ".\time-client"
& dotnet restore
& dotnet publish -c Release -o bin\Publish
& docker build -t timeclient .
Pop-Location

Push-Location -Path ".\time-server"
& dotnet restore
& dotnet publish -c Release -o bin\Publish
& docker build -t timeserver .
Pop-Location

Write-Host "`n`nDocker Images:"
& docker images

