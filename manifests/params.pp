# private class, do not use directly
# the parameters that steer this module
class sane::params {
  $packages = [ 'xsane', 'sane-backends', 'sane-airscan' ]
  $service_name = 'saned'
  $enable_hpaio = false
}
