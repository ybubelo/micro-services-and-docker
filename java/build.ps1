& docker rmi java8
& docker rmi timeserver
& docker rmi timeclient

Push-Location -Path ".\base-image"
& docker build -t java8 .
Pop-Location

Push-Location -Path ".\time-server"
& mvn package
& docker build -t timeserver .
Pop-Location

Push-Location -Path ".\time-client"
& mvn package
& docker build -t timeclient .
Pop-Location

Write-Host "`n`nDocker Images:"
& docker images