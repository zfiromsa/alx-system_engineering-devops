# Increas the ULIMIT for Nginx

exec { 'fix--for-nginx':
	command => "sudo sed -i 's/15/4096/' /etc/default/nginx; sudo service nginx restart",
	path    => ['/bin', '/usr/bin', '/usr/sbin']
}

