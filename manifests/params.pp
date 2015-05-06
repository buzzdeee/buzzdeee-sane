# private class, do not use directly
# the parameters that steer this module
class sane::params {
  $packages = [ 'xsane', 'sane-backends', 'hpaio', 'hplip-common' ]
  $service_name = 'saned'
  $enable_hpaio = true
}
