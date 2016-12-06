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
    source => 'puppet:///modules/profile/apache/index.html',
  }

  file { '/var/www/html/stlpug.jpeg':
    ensure => 'file',
    group  => '0',
    mode   => '0644',
    owner  => '0',
    source => 'puppet:///modules/profile/apache/stlpug.jpeg',
  }

  file { '/var/www/html/rambo.jpeg':
    ensure => 'file',
    group  => '0',
    mode   => '0644',
    owner  => '0',
    source => 'puppet:///modules/profile/apache/rambo.jpeg',
  }
}
