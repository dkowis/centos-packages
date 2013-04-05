package{'ruby-devel':
  ensure => present,
}

package{ "rpmdevtools":
  ensure => present,
}

package {"fpm":
  ensure   => present,
  provider => 'gem',
  require  => Package['ruby-devel'],
}

package {'fpm-cookery':
  ensure   => present,
  provider => gem,
  require  => Package['ruby-devel'],
}

package {'wget':
  ensure => present,
}
