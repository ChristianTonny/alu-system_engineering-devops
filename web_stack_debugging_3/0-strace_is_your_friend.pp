# Puppet manifest to fix Apache 500 error
# Based on strace analysis, the issue is likely a misnamed file or typo

exec { 'fix-wordpress':
  command => 'sed -i "s/\.phpp/.php/g" /var/www/html/wp-settings.php',
  path    => ['/usr/local/bin/', '/bin/'],
  provider => 'shell',
} 