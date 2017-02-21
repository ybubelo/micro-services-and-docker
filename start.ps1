& docker run -d --name time_server timeserver
$serverIP = docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' time_server | Out-String
$serverIP = $serverIP.Replace("\r", "").Replace("\n", "").Trim()
& docker run -e SERVER_HOST=$serverIP -e SERVER_PORT=8080 --name time_client timeclient