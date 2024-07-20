<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Nomad

[![集成程度](https://dash.yunohost.org/integration/nomad.svg)](https://ci-apps.yunohost.org/ci/apps/nomad/) ![工作状态](https://ci-apps.yunohost.org/ci/badges/nomad.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/nomad.maintain.svg)

[![使用 YunoHost 安装 Nomad](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=nomad)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Nomad。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

Nomad is a simple and flexible workload orchestrator to deploy and manage containers ([docker](https://www.nomadproject.io/docs/drivers/docker.html), [podman](https://www.nomadproject.io/docs/drivers/podman)), non-containerized applications ([executable](https://www.nomadproject.io/docs/drivers/exec.html), [Java](https://www.nomadproject.io/docs/drivers/java)), and virtual machines ([qemu](https://www.nomadproject.io/docs/drivers/qemu.html)) across on-prem and clouds at scale.


**分发版本：** 1.7.7~ynh3

## 截图

![Nomad 的截图](./doc/screenshots/assets.png)

## 文档与资源

- 官方应用网站： <https://www.nomadproject.io>
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
