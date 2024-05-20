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


**Versión proporcionada:** 1.7.7~ynh2

## Capturas de pantalla

![Captura de pantalla de Nomad](./doc/screenshots/assets.png)

## Documentación e recursos

- Web oficial da app: <https://www.nomadproject.io>
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
