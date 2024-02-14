# -------------- General options ---------------

# Specifies the region the Nomad agent is a member of. A region typically maps to a
# geographic region, for example USA, with potentially multiple zones, which map to
# datacenters such as us-west and us-east. Defaults to global.
#region = "USA"

# Datacenter of the local agent. All members of a datacenter should share a local
# LAN connection. Defaults to dc1.
#datacenter = "data-center-one"

# The name of the local node. This value is used to identify individual nodes in a
# given datacenter and must be unique per-datacenter. By default this is set to the
# local host's name.
#name = "client-one"

# A local directory used to store agent state. Client nodes use this directory by
# default to store temporary allocation data as well as cluster information. Server
# nodes use this directory to store cluster state, including the replicated log and
# snapshot data. This option is required to start the Nomad agent.
data_dir = "__DATA_DIR__"

# Controls the verbosity of logs the Nomad agent will output. Valid log levels include
# WARN, INFO, or DEBUG in increasing order of verbosity. Defaults to INFO.
#log_level = "DEBUG"

# Used to indicate which address the Nomad agent should bind to for network services,
# including the HTTP interface as well as the internal gossip protocol and RPC mechanism.
# This should be specified in IP format, and can be used to easily bind all network services
# to the same address. It is also possible to bind the individual services to different
# addresses using the addresses configuration option. Defaults to the local loopback
#  address 127.0.0.1.
bind_addr = "0.0.0.0"

# Enables the debugging HTTP endpoints. These endpoints can be used with profiling tools
# to dump diagnostic information about Nomad's internals. It is not recommended to leave
# this enabled in production environments. Defaults to false.
enable_debug = false

# Controls the network ports used for different services required by the Nomad agent.
ports {
    # The port used to run the HTTP server. Applies to both client and server nodes. Defaults to __HTTP_PORT__.
    http = __PORT__

    # The port used for internal RPC communication between agents and servers, and for inter-server
    # traffic for the consensus algorithm (raft). Defaults to __PORT_RPC__. Only used on server nodes.
    rpc = __PORT_RPC__

    # The port used for the gossip protocol for cluster membership. Both TCP and UDP should be routable
    # between the server nodes on this port. Defaults to __PORT_SERF__. Only used on server nodes.
    serf = __PORT_SERF__
}

# Controls the bind address for individual network services. Any values configured in this block
#  take precedence over the default bind_addr.
addresses {

    # The address the HTTP server is bound to. This is the most common bind address to change.
    # Applies to both clients and servers.
#   http = "0.0.0.0"

    # The address to bind the internal RPC interfaces to. Should be exposed only to other cluster
    #  members if possible. Used only on server nodes, but must be accessible from all agents.
#   rpc = "0.0.0.0"

    # The address used to bind the gossip layer to. Both a TCP and UDP listener will be exposed on this
    # address. Should be restricted to only server nodes from the same datacenter if possible.
    # Used only on server nodes.
#   serf = "0.0.0.0"
}

# Controls the advertise address for individual network services. This can be used to advertise a
# different address to the peers of a server node to support more complex network configurations such
# as NAT. This configuration is optional, and defaults to the bind address of the specific network
# service if it is not provided. This configuration is only applicable on server nodes.
#advertise {

    # The address to advertise for the RPC interface. This address should be reachable by all of
    # the agents in the cluster.
#   rpc = "1.2.3.4:__PORT_RPC__"

    # The address advertised for the gossip layer. This address must be reachable from all server nodes.
    #  It is not required that clients can reach this address.
#   serf = "1.2.3.4:__PORT_SERF__"
#}

# Used to control how the Nomad agent exposes telemetry data to external metrics collection servers.
telemetry {
    # Address of a statsite server to forward metrics data to.
#   statsite_address = "1.2.3.4:5678"

    # Address of a statsd server to forward metrics to.
#   statsd_address = "1.2.3.4:5678"

    # A boolean indicating if gauge values should not be prefixed with the local hostname.
#   disable_hostname  = false
}

# Enables gracefully leaving when receiving the interrupt signal. By default, the agent will
# exit forcefully on any signal.
leave_on_interrupt = false

# Enables gracefully leaving when receiving the terminate signal. By default, the agent will
# exit forcefully on any signal.
leave_on_terminate = false

# Enables logging to syslog. This option only works on Unix based systems.
enable_syslog = false

# Controls the syslog facility that is used. By default, LOCAL0 will be used. This should
# be used with enable_syslog.
syslog_facility = "LOCAL0"

# Disables automatic checking for security bulletins and new version releases.
disable_update_check = true

# Disables providing an anonymous signature for de-duplication with the update check.
disable_anonymous_signature = false
