# Profiles Apache server
class profile::apache {

  include apache

  service { 'iptables':
    ensure => 'stopped',
    enable => 'false',
  }

  file { '/var/www/html/index.html':
    ensure => 'file',
    group  => '0',
    mode   => '0644',
    owner  => '0',
  }

  file { '/var/www/html/stlpug.jpeg':
    ensure => 'file',
    group  => '0',
    mode   => '0644',
    owner  => '0',
  }

  file { '/var/www/html/rambo.jpeg':
    ensure => 'file',
    group  => '0',
    mode   => '0644',
    owner  => '0',
  }
}
