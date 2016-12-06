# Profiles Apache server
class profile::apache {

  include apache
  
  service { 'iptables':
    ensure => 'stopped',
    enable => 'false',
  }
}
