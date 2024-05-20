<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Nomad YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/nomad.svg)](https://dash.yunohost.org/appci/app/nomad) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/nomad.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/nomad.maintain.svg)

[![Instalatu Nomad YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=nomad)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Nomad YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Nomad is a simple and flexible workload orchestrator to deploy and manage containers ([docker](https://www.nomadproject.io/docs/drivers/docker.html), [podman](https://www.nomadproject.io/docs/drivers/podman)), non-containerized applications ([executable](https://www.nomadproject.io/docs/drivers/exec.html), [Java](https://www.nomadproject.io/docs/drivers/java)), and virtual machines ([qemu](https://www.nomadproject.io/docs/drivers/qemu.html)) across on-prem and clouds at scale.


**Paketatutako bertsioa:** 1.7.7~ynh2

## Pantaila-argazkiak

![Nomad(r)en pantaila-argazkia](./doc/screenshots/assets.png)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://www.nomadproject.io>
- Administratzaileen dokumentazio ofiziala: <https://www.nomadproject.io/docs>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/hashicorp/nomad>
- YunoHost Denda: <https://apps.yunohost.org/app/nomad>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/nomad_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/nomad_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/nomad_ynh/tree/testing --debug
edo
sudo yunohost app upgrade nomad -u https://github.com/YunoHost-Apps/nomad_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
