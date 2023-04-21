# install flask from pip3 using Puppet

package { 'python3-pip':
  ensure => installed,
}

exec { 'install-flask':
  command => 'install Flask==2.1.0',
  require => Package['python3-pip'],
}
