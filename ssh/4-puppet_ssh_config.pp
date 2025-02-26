# Configure SSH client to use the private key ~/.ssh/school and disable password authentication

exec { 'configfile':
  command => 'echo "IdentityFile ~/.ssh/school" >> /etc/ssh/ssh_config; echo "PasswordAuthentication no" >> /etc/ssh/ssh_config',
  path    => ['/usr/bin', '/bin'],
}
