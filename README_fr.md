<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Nomad pour YunoHost

[![Niveau d’intégration](https://dash.yunohost.org/integration/nomad.svg)](https://ci-apps.yunohost.org/ci/apps/nomad/) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/nomad.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/nomad.maintain.svg)

[![Installer Nomad avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=nomad)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Nomad rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Nomad is a simple and flexible workload orchestrator to deploy and manage containers ([docker](https://www.nomadproject.io/docs/drivers/docker.html), [podman](https://www.nomadproject.io/docs/drivers/podman)), non-containerized applications ([executable](https://www.nomadproject.io/docs/drivers/exec.html), [Java](https://www.nomadproject.io/docs/drivers/java)), and virtual machines ([qemu](https://www.nomadproject.io/docs/drivers/qemu.html)) across on-prem and clouds at scale.


**Version incluse :** 1.7.7~ynh3

## Captures d’écran

![Capture d’écran de Nomad](./doc/screenshots/assets.png)

## Documentations et ressources

- Site officiel de l’app : <https://www.nomadproject.io>
- Documentation officielle de l’admin : <https://www.nomadproject.io/docs>
- Dépôt de code officiel de l’app : <https://github.com/hashicorp/nomad>
- YunoHost Store : <https://apps.yunohost.org/app/nomad>
- Signaler un bug : <https://github.com/YunoHost-Apps/nomad_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/nomad_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/nomad_ynh/tree/testing --debug
ou
sudo yunohost app upgrade nomad -u https://github.com/YunoHost-Apps/nomad_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
