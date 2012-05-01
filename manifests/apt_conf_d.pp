# apt_conf_d.pp
# add apt configuration in apt.conf.d/ directory

define apt::apt_conf_d (
  $priority='10',
  $conf_d
) {

  include apt::params

  file { "${apt::params::root}/apt.conf.d/${priority}${name}":
    owner   => root,
    group   => root,
    mode    => '0644',
    content => "${conf_d}"
  }
}
