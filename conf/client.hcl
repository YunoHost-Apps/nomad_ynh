#----------------------- client-specific options ---------------------
client {
    # A boolean indicating if client mode is enabled. All other client configuration options depend on this value.
    # Defaults to false. 
    enabled = true

    # This is the state dir used to store client state. By default, it lives inside of the data_dir, in the
    # "client" sub-path. 
#   state_dir = "/tmp/client"

    # A directory used to store allocation data. Depending on the workload, the size of this directory can grow
    # arbitrarily large as it is used to store downloaded artifacts for drivers (QEMU images, JAR files, etc.). It is therefore
    # important to ensure this directory is placed some place on the filesystem with adequate storage capacity. By default, this
    # directory lives under the data_dir at the "alloc" sub-path. 
#   alloc_dir = "/tmp/alloc"

    # An array of server addresses. This list is used to register the client with the server nodes and advertise
    # the available resources so that the agent can receive work. 
    servers = ["__SERVER_IP__:__RPC_PORT__"]

    # This is the value used to uniquely identify the local agent's node registration with the servers. This can be any arbitrary
    # string but must be unique to the cluster. By default, if not specified, a randomly- generate UUID will be used. 
#   node_id = "foo"

    # A string used to logically group client nodes by class. This can be used during job placement as a filter.
    # This option is not required and has no default. 
#    node_class = "experimentation"

    # This is a key/value mapping of metadata pairs. This is a free-form map and can contain any string values. 
    meta {}

    # This is a key/value mapping of internal configuration for clients, such as for driver configuration. 
    options {}
    
    # This is a string to force network fingerprinting to use a specific network interface 
#   network_interface = "eth0"

    # This is an int that sets the default link speed of network interfaces, in megabits, if their speed can not be
    #  determined dynamically. 
    network_speed = 100
}

plugin "nomad-driver-lxc" {
  config {
    enabled = true
    volumes_enabled = true
    lxc_path = "/var/lib/lxc"
  }
}
