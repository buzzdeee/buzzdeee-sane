# private class, do not use directly
# takes care about package installation

class sane::install (
  $packages,
) {
  package { $packages:
    ensure => 'installed',
  }
}
