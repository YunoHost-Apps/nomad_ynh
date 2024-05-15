<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# Nomad para Yunohost

[![Nivel de integración](https://dash.yunohost.org/integration/nomad.svg)](https://dash.yunohost.org/appci/app/nomad) ![Estado funcional](https://ci-apps.yunohost.org/ci/badges/nomad.status.svg) ![Estado En Mantención](https://ci-apps.yunohost.org/ci/badges/nomad.maintain.svg)

[![Instalar Nomad con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=nomad)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarNomad rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

Nomad is a simple and flexible workload orchestrator to deploy and manage containers ([docker](https://www.nomadproject.io/docs/drivers/docker.html), [podman](https://www.nomadproject.io/docs/drivers/podman)), non-containerized applications ([executable](https://www.nomadproject.io/docs/drivers/exec.html), [Java](https://www.nomadproject.io/docs/drivers/java)), and virtual machines ([qemu](https://www.nomadproject.io/docs/drivers/qemu.html)) across on-prem and clouds at scale.


**Versión actual:** 1.7.7~ynh1

## Capturas

![Captura de Nomad](./doc/screenshots/assets.png)

## informaciones importantes

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

## Documentaciones y recursos

- Sitio web oficial: <https://www.nomadproject.io/>
- Documentación administrador oficial: <https://www.nomadproject.io/docs>
- Repositorio del código fuente oficial de la aplicación : <https://github.com/hashicorp/nomad>
- Catálogo YunoHost: <https://apps.yunohost.org/app/nomad>
- Reportar un error: <https://github.com/YunoHost-Apps/nomad_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [`branch testing`](https://github.com/YunoHost-Apps/nomad_ynh/tree/testing

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/nomad_ynh/tree/testing --debug
o
sudo yunohost app upgrade nomad -u https://github.com/YunoHost-Apps/nomad_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>
