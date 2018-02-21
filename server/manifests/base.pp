class docker::exec { 'php-alpine':
   detach => true,
   container => 'php70-fpm-alpine',
   command => 'uptime',
   tty => true
}
