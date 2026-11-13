# Raises the Nginx open file limit so it can handle many concurrent requests without failing
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/',
}

exec { 'nginx-restart':
  command => 'service nginx restart',
  path    => '/usr/sbin/:/usr/bin/:/sbin/:/bin/',
  require => Exec['fix--for-nginx'],
}
