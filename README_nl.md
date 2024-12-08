<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# Nomad voor Yunohost

[![Integratieniveau](https://apps.yunohost.org/badge/integration/nomad)](https://ci-apps.yunohost.org/ci/apps/nomad/)
![Mate van functioneren](https://apps.yunohost.org/badge/state/nomad)
![Onderhoudsstatus](https://apps.yunohost.org/badge/maintained/nomad)

[![Nomad met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=nomad)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je Nomad snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

Nomad is a simple and flexible workload orchestrator to deploy and manage containers ([docker](https://www.nomadproject.io/docs/drivers/docker.html), [podman](https://www.nomadproject.io/docs/drivers/podman)), non-containerized applications ([executable](https://www.nomadproject.io/docs/drivers/exec.html), [Java](https://www.nomadproject.io/docs/drivers/java)), and virtual machines ([qemu](https://www.nomadproject.io/docs/drivers/qemu.html)) across on-prem and clouds at scale.


**Geleverde versie:** 1.7.7~ynh3

## Schermafdrukken

![Schermafdrukken van Nomad](./doc/screenshots/assets.png)

## Documentatie en bronnen

- Officiele website van de app: <https://www.nomadproject.io>
- Officiele beheerdersdocumentatie: <https://www.nomadproject.io/docs>
- Upstream app codedepot: <https://github.com/hashicorp/nomad>
- YunoHost-store: <https://apps.yunohost.org/app/nomad>
- Meld een bug: <https://github.com/YunoHost-Apps/nomad_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/nomad_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/nomad_ynh/tree/testing --debug
of
sudo yunohost app upgrade nomad -u https://github.com/YunoHost-Apps/nomad_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>
