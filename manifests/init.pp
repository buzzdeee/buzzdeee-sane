# == Class: sane
#
# Full description of class sane here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'sane':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class sane (
  $packages = $::sane::params::packages,
  $service_name = $::sane::params::service_name,
  $enable_hpaio = $::sane::params::enable_hpaio,
) inherits sane::params {


  class { 'sane::install':
    packages => $packages,
  }

  class { 'sane::config':
    enable_hpaio => $enable_hpaio,
  }

  class { 'sane::service':
    service_name => $service_name,
  }

  Class['sane::install'] ->
  Class['sane::config'] ~>
  Class['sane::service']
}
