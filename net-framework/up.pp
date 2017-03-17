exec {'start time server':
  command => '"C:\Program Files\Docker\docker.exe" run -d --restart=always --network=nat -p 8080:8080 --name time_server timeserver',
  logoutput => true
}

exec {'start time client':
  command => '"C:\Program Files\Docker\docker.exe" run -d --restart=always --network=nat -e SERVER_HOST=10.4.20.71 -e SERVER_PORT=8080 --name time_client timeclient',
  logoutput => true
}
