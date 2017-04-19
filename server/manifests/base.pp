class base

  	exec { 'apt-update':
  		path => '/home/vagrant/bin:/home/vagrant/.local/bin:/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin',
  		command => 'apt-get update'
    }

	package { 'git':
  	    ensure => latest,
  	    require => Exec['apt-update']
	}

    exec { 'nginx':
        path => '/home/vagrant/bin:/home/vagrant/.local/bin:/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin',
        command => 'apt-get install -y nginx'
    }

    exec { 'php7':
        path => '/home/vagrant/bin:/home/vagrant/.local/bin:/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin',
        command => 'apt-get install -y curl php7.0-fpm php7.0-mbstring php7.0-mcrypt php-oauth php-mongodb php-json php-memcache php-memcached php-xml phpunit php-codesniffer'
    }

    exec { 'docker':
        path => '/home/vagrant/bin:/home/vagrant/.local/bin:/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin',
    command => '/usr/bin/apt-get install -y docker docker-compose'
    }
}
