class sshd::config {
  file { "/etc/ssh/sshd_config":
    source  => "puppet:///sshd/sshd_config",
    mode    => "600",
    owner   => "root",
    group   => "root",
    notify  => Class["sshd::service"]
  }
}

class sshd::service {
  service { "sshd":
    enabled => true,
    ensure  => running,
}

class sshd { include sshd::config }
