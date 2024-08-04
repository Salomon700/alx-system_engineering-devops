# 1-install_a_package.pp

# Ensure pip3 is installed first (optional, adjust as necessary for your system)
package { 'python3-pip':
  ensure => installed,
}

# Install Flask version 2.1.0 using pip3
exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => ['/usr/bin', '/usr/local/bin'],
  unless  => '/usr/bin/pip3 show flask | grep "Version: 2.1.0"',
}
