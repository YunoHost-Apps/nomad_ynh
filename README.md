<!--
N.B.: This README was automatically generated by https://github.com/YunoHost/apps/tree/master/tools/README-generator
It shall NOT be edited by hand.
-->

# Nomad for YunoHost

[![Integration level](https://dash.yunohost.org/integration/nomad.svg)](https://dash.yunohost.org/appci/app/nomad) ![Working status](https://ci-apps.yunohost.org/ci/badges/nomad.status.svg) ![Maintenance status](https://ci-apps.yunohost.org/ci/badges/nomad.maintain.svg)

[![Install Nomad with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=nomad)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Nomad quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview

Nomad is a simple and flexible workload orchestrator to deploy and manage containers ([docker](https://www.nomadproject.io/docs/drivers/docker.html), [podman](https://www.nomadproject.io/docs/drivers/podman)), non-containerized applications ([executable](https://www.nomadproject.io/docs/drivers/exec.html), [Java](https://www.nomadproject.io/docs/drivers/java)), and virtual machines ([qemu](https://www.nomadproject.io/docs/drivers/qemu.html)) across on-prem and clouds at scale.


**Shipped version:** 1.5.6~ynh1

## Screenshots

![Screenshot of Nomad](./doc/screenshots/assets.png)

## Disclaimers / important information

## Some Nomad Job examples

### Busybox

`lxc-create --name=busybox --template=busybox`

```
job "job-busybox" {
  datacenters = ["dc1"]
  type        = "service"

  group "group-busybox" {
    task "task-busybox" {
      driver = "lxc"

      config {
        log_level = "info"
        verbosity = "verbose"
        template  = "/usr/share/lxc/templates/lxc-busybox"
      }

      resources {
        cpu    = 500
        memory = 256
      }
    }
  }
}
```

### Debian

`lxc-create --name=debian --template=debian`

```
job "job-debian" {
  datacenters = ["dc1"]
  type        = "service"

  group "group-debian" {
    task "task-debian" {
      driver = "lxc"

      config {
        log_level = "info"
        verbosity = "verbose"
        template  = "/usr/share/lxc/templates/lxc-debian"
      }

      resources {
        cpu    = 500
        memory = 256
      }
    }
  }
}
```

### Debian Stretch

`lxc-create --name=stretch --template=debian -- --release=stretch`

```
job "job-stretch" {
  datacenters = ["dc1"]
  type        = "service"

  group "group-stretch" {
    task "task-stretch" {
      driver = "lxc"

      config {
        log_level = "info"
        verbosity = "verbose"
        template  = "/usr/share/lxc/templates/lxc-debian"
		template_args = ["--release=stretch"]
      }

      resources {
        cpu    = 500
        memory = 256
      }
    }
  }
}
```

### Debian Buster

`lxc-create --name=buster --template=debian -- --release=buster`

```
job "job-buster" {
  datacenters = ["dc1"]
  type        = "service"

  group "group-buster" {
    task "task-buster" {
      driver = "lxc"

      config {
        log_level = "info"
        verbosity = "verbose"
        template  = "/usr/share/lxc/templates/lxc-debian"
		template_args = ["--release=buster"]
      }

      resources {
        cpu    = 500
        memory = 256
      }
    }
  }
}
```

### Debian Buster from images.linuxcontainers.org

`lxc-create --name=download-buster --template=download -- --dist=debian --release=buster --arch=amd64 --keyserver=hkp://keyserver.ubuntu.com`

```
job "job-download-buster" {
  datacenters = ["dc1"]
  type        = "service"

  group "group-download-buster" {
    task "task-download-buster" {
      driver = "lxc"

      config {
        log_level = "info"
        verbosity = "verbose"
        template  = "/usr/share/lxc/templates/lxc-download"
		template_args = ["--dist=debian","--release=buster","--arch=amd64","--keyserver=hkp://keyserver.ubuntu.com"]
      }

      resources {
        cpu    = 500
        memory = 256
      }
    }
  }
}
```

### Debian Bullseye from images.linuxcontainers.org

`lxc-create --name=download-bullseye --template=download -- --dist=debian --release=bullseye --arch=amd64 --keyserver=hkp://keyserver.ubuntu.com`

```
job "job-download-bullseye" {
  datacenters = ["dc1"]
  type        = "service"

  group "group-download-bullseye" {
    task "task-download-bullseye" {
      driver = "lxc"

      config {
        log_level = "info"
        verbosity = "verbose"
        template  = "/usr/share/lxc/templates/lxc-download"
		template_args = ["--dist=debian","--release=bullseye","--arch=amd64","--keyserver=hkp://keyserver.ubuntu.com"]
      }

      resources {
        cpu    = 500
        memory = 256
      }
    }
  }
}
```

## Documentation and resources

* Official app website: <https://www.nomadproject.io/>
* Official admin documentation: <https://www.nomadproject.io/docs>
* Upstream app code repository: <https://github.com/hashicorp/nomad>
* YunoHost Store: <https://apps.yunohost.org/app/nomad>
* Report a bug: <https://github.com/YunoHost-Apps/nomad_ynh/issues>

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/nomad_ynh/tree/testing).

To try the testing branch, please proceed like that.

``` bash
sudo yunohost app install https://github.com/YunoHost-Apps/nomad_ynh/tree/testing --debug
or
sudo yunohost app upgrade nomad -u https://github.com/YunoHost-Apps/nomad_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
