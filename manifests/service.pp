# private class, do not use directly
# takes care about the service

class sane::service (
  $service_name,
) {
  service { $service_name:
    ensure => 'running',
  }
}
