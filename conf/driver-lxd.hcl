plugin "nomad-driver-lxd" {
  config {
    enabled = true
    volumes_enabled = true
    lxc_path = "/var/lib/lxc"
    lxd_path = "/var/lib/lxd"
  }
}
