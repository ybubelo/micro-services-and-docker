& docker rmi timeserver
& docker rmi timeclient

& msbuild Solution.sln /t:Build /p:Configuration=Release 

Push-Location -Path ".\time-client"
& docker build -t timeclient .
Pop-Location

Push-Location -Path ".\time-server"
& docker build -t timeserver .
Pop-Location

Write-Host "`n`nDocker Images:"
& docker images

