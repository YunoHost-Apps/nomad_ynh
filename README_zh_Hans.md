<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 的 Nomad

[![集成程度](https://dash.yunohost.org/integration/nomad.svg)](https://dash.yunohost.org/appci/app/nomad) ![工作状态](https://ci-apps.yunohost.org/ci/badges/nomad.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/nomad.maintain.svg)

[![使用 YunoHost 安装 Nomad](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=nomad)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Nomad。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

Nomad is a simple and flexible workload orchestrator to deploy and manage containers ([docker](https://www.nomadproject.io/docs/drivers/docker.html), [podman](https://www.nomadproject.io/docs/drivers/podman)), non-containerized applications ([executable](https://www.nomadproject.io/docs/drivers/exec.html), [Java](https://www.nomadproject.io/docs/drivers/java)), and virtual machines ([qemu](https://www.nomadproject.io/docs/drivers/qemu.html)) across on-prem and clouds at scale.


**分发版本：** 1.7.7~ynh1

## 截图

![Nomad 的截图](./doc/screenshots/assets.png)

## 免责声明 / 重要信息

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

## 文档与资源

- 官方应用网站： <https://www.nomadproject.io/>
- 官方管理文档： <https://www.nomadproject.io/docs>
- 上游应用代码库： <https://github.com/hashicorp/nomad>
- YunoHost 商店： <https://apps.yunohost.org/app/nomad>
- 报告 bug： <https://github.com/YunoHost-Apps/nomad_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/nomad_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/nomad_ynh/tree/testing --debug
或
sudo yunohost app upgrade nomad -u https://github.com/YunoHost-Apps/nomad_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
