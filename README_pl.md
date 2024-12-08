<!--
To README zostało automatycznie wygenerowane przez <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Nie powinno być ono edytowane ręcznie.
-->

# Nomad dla YunoHost

[![Poziom integracji](https://apps.yunohost.org/badge/integration/nomad)](https://ci-apps.yunohost.org/ci/apps/nomad/)
![Status działania](https://apps.yunohost.org/badge/state/nomad)
![Status utrzymania](https://apps.yunohost.org/badge/maintained/nomad)

[![Zainstaluj Nomad z YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=nomad)

*[Przeczytaj plik README w innym języku.](./ALL_README.md)*

> *Ta aplikacja pozwala na szybką i prostą instalację Nomad na serwerze YunoHost.*  
> *Jeżeli nie masz YunoHost zapoznaj się z [poradnikiem](https://yunohost.org/install) instalacji.*

## Przegląd

Nomad is a simple and flexible workload orchestrator to deploy and manage containers ([docker](https://www.nomadproject.io/docs/drivers/docker.html), [podman](https://www.nomadproject.io/docs/drivers/podman)), non-containerized applications ([executable](https://www.nomadproject.io/docs/drivers/exec.html), [Java](https://www.nomadproject.io/docs/drivers/java)), and virtual machines ([qemu](https://www.nomadproject.io/docs/drivers/qemu.html)) across on-prem and clouds at scale.


**Dostarczona wersja:** 1.7.7~ynh3

## Zrzuty ekranu

![Zrzut ekranu z Nomad](./doc/screenshots/assets.png)

## Dokumentacja i zasoby

- Oficjalna strona aplikacji: <https://www.nomadproject.io>
- Oficjalna dokumentacja dla administratora: <https://www.nomadproject.io/docs>
- Repozytorium z kodem źródłowym: <https://github.com/hashicorp/nomad>
- Sklep YunoHost: <https://apps.yunohost.org/app/nomad>
- Zgłaszanie błędów: <https://github.com/YunoHost-Apps/nomad_ynh/issues>

## Informacje od twórców

Wyślij swój pull request do [gałęzi `testing`](https://github.com/YunoHost-Apps/nomad_ynh/tree/testing).

Aby wypróbować gałąź `testing` postępuj zgodnie z instrukcjami:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/nomad_ynh/tree/testing --debug
lub
sudo yunohost app upgrade nomad -u https://github.com/YunoHost-Apps/nomad_ynh/tree/testing --debug
```

**Więcej informacji o tworzeniu paczek aplikacji:** <https://yunohost.org/packaging_apps>
