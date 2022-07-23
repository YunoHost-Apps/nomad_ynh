plugin "nomad-driver-lxc" {
  config {
    enabled = true
    volumes_enabled = true
    lxc_path = "/var/lib/lxc"
  }
}
