exec {'stop time client':
  command => '"C:\Program Files\Docker\docker.exe" stop time_client',
  logoutput => true
}

exec {'remove time client':
  command => '"C:\Program Files\Docker\docker.exe" rm time_client',
  logoutput => true
}

exec {'stop time server':
  command => '"C:\Program Files\Docker\docker.exe" stop time_server',
  logoutput => true
}

exec {'remove time server':
  command => '"C:\Program Files\Docker\docker.exe" rm time_server',
  logoutput => true
}
