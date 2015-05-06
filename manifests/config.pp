# private class, do not use directly
# takes care about configuring sane

class sane::config (
  $enable_hpaio,
) {

  if $enable_hpaio {
    exec { 'sane_enable_hpaio':
      command => 'echo hpaio >> /etc/sane.d/dll.conf',
      onlyif  => 'test `grep -c hpaio /etc/sane.d/dll.conf` == 0',
    }
  }
}
