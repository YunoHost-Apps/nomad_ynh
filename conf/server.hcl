# ------------- server-specific options ----------------------------- 
server {

    # A boolean indicating if server mode should be enabled for the local agent. All other server
    # options depend on this value being set. Defaults to false. 
    enabled = true

    # This is an integer representing the number of server nodes to wait for before bootstrapping. It is most
    # common to use the odd-numbered integers 3 or 5 for this value, depending on the cluster size. A value of
    # 1 does not provide any fault tolerance and is not recommended for production use cases.  
    bootstrap_expect = __BOOTSTRAP_EXPECT__

    # This is the data directory used for server-specific data, including the replicated log. By default, this
    # directory lives inside of the data_dir in the "server" sub-path. 
#   data_dir = "/tmp/server"

    # The Nomad protocol version spoken when communicating with other Nomad servers. This value is typically not
    # required as the agent internally knows the latest version, but may be useful in some upgrade scenarios. 
#   protocol_version = 0

    # The number of parallel scheduler threads to run. This can be as many as one per core, or 0 to disallow this
    # server from making any scheduling decisions. This defaults to the number of CPU cores.
#   num_schedulers = 1

    # This is an array of strings indicating which sub-schedulers this server will handle. This can be used to
    # restrict the evaluations that worker threads will dequeue for processing. This defaults to all available schedulers. 
#   enabled_schedulers = "[]"

    # This is a string with a unit suffix, such as "300ms", "1.5h" or "25m". Valid time units are "ns",
    # "us" (or "µs"), "ms", "s", "m", "h". Controls how long a node must be in a terminal state before it is
    # garbage collected and purged from the system. 
    node_gc_threshold = "6h"

    # When provided, Nomad will ignore a previous leave and attempt to rejoin the cluster when starting.
    # By default, Nomad treats leave as a permanent intent and does not attempt to join the cluster again when
    # starting. This flag allows the previous state to be used to rejoin the cluster. 
    rejoin_after_leave = true

    # Similar to start_join but allows retrying a join if the first attempt fails. This is useful for cases
    # where we know the address will become available eventually. 
    retry_join = ["__RETRY_JOIN__"]

    # The time to wait between join attempts. Defaults to 30s.
    retry_interval = "30s"

    # The maximum number of join attempts to be made before exiting with a return code of 1.
    # By default, this is set to 0 which is interpreted as infinite retries. 
    retry_max = 0

    # An array of strings specifying addresses of nodes to join upon startup. If Nomad is unable to join with any
    # of the specified addresses, agent startup will fail. By default, the agent won't join any nodes when it starts up. 
#   start_join = []
}
