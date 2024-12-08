<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Nomad untuk YunoHost

[![Tingkat integrasi](https://apps.yunohost.org/badge/integration/nomad)](https://ci-apps.yunohost.org/ci/apps/nomad/)
![Status kerja](https://apps.yunohost.org/badge/state/nomad)
![Status pemeliharaan](https://apps.yunohost.org/badge/maintained/nomad)

[![Pasang Nomad dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=nomad)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Nomad secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

Nomad is a simple and flexible workload orchestrator to deploy and manage containers ([docker](https://www.nomadproject.io/docs/drivers/docker.html), [podman](https://www.nomadproject.io/docs/drivers/podman)), non-containerized applications ([executable](https://www.nomadproject.io/docs/drivers/exec.html), [Java](https://www.nomadproject.io/docs/drivers/java)), and virtual machines ([qemu](https://www.nomadproject.io/docs/drivers/qemu.html)) across on-prem and clouds at scale.


**Versi terkirim:** 1.7.7~ynh3

## Tangkapan Layar

![Tangkapan Layar pada Nomad](./doc/screenshots/assets.png)

## Dokumentasi dan sumber daya

- Website aplikasi resmi: <https://www.nomadproject.io>
- Dokumentasi admin resmi: <https://www.nomadproject.io/docs>
- Depot kode aplikasi hulu: <https://github.com/hashicorp/nomad>
- Gudang YunoHost: <https://apps.yunohost.org/app/nomad>
- Laporkan bug: <https://github.com/YunoHost-Apps/nomad_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/nomad_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/nomad_ynh/tree/testing --debug
atau
sudo yunohost app upgrade nomad -u https://github.com/YunoHost-Apps/nomad_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
