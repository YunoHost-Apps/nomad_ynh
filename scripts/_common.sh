#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies=""
extra_pkg_dependencies="nomad"

server_pkg_dependencies=""

client_pkg_dependencies=""
client_lxc_pkg_dependencies="pkg-config lxc-dev lxc lxc-templates"

go_version=1.15

#=================================================
# PERSONAL HELPERS
#=================================================

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
