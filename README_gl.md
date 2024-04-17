<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# Nomad para YunoHost

[![Nivel de integración](https://dash.yunohost.org/integration/nomad.svg)](https://dash.yunohost.org/appci/app/nomad) ![Estado de funcionamento](https://ci-apps.yunohost.org/ci/badges/nomad.status.svg) ![Estado de mantemento](https://ci-apps.yunohost.org/ci/badges/nomad.maintain.svg)

[![Instalar Nomad con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=nomad)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar Nomad de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

Nomad is a simple and flexible workload orchestrator to deploy and manage containers ([docker](https://www.nomadproject.io/docs/drivers/docker.html), [podman](https://www.nomadproject.io/docs/drivers/podman)), non-containerized applications ([executable](https://www.nomadproject.io/docs/drivers/exec.html), [Java](https://www.nomadproject.io/docs/drivers/java)), and virtual machines ([qemu](https://www.nomadproject.io/docs/drivers/qemu.html)) across on-prem and clouds at scale.


**Versión proporcionada:** 1.7.7~ynh1

## Capturas de pantalla

![Captura de pantalla de Nomad](./doc/screenshots/assets.png)

## Avisos / información importante

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

## Documentación e recursos

- Web oficial da app: <https://www.nomadproject.io/>
- Documentación oficial para admin: <https://www.nomadproject.io/docs>
- Repositorio de orixe do código: <https://github.com/hashicorp/nomad>
- Tenda YunoHost: <https://apps.yunohost.org/app/nomad>
- Informar dun problema: <https://github.com/YunoHost-Apps/nomad_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/nomad_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/nomad_ynh/tree/testing --debug
ou
sudo yunohost app upgrade nomad -u https://github.com/YunoHost-Apps/nomad_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>
