# bluejay &nbsp; [![bluebuild build badge](https://github.com/white-gecko/bluejay/actions/workflows/build.yml/badge.svg)](https://github.com/white-gecko/bluejay/actions/workflows/build.yml)

See the [BlueBuild docs](https://blue-build.org/how-to/setup/) for quick setup instructions for setting up your own repository based on this template.

After setup, it is recommended you update this README to describe your custom image.

## Features

- With [task](https://taskfile.dev/)
- With running [pulsar](https://pulsar-edit.dev/)
- With [podman](https://podman.io/) and podman-docker (docker is removed)
- With [quarto](https://quarto.org/)
- LaTeX stuff
- Many more packages

## TODO

- enable caffeine and quake terminal gnome-extensions per default
- customize gnome application panel, remove software, vscode, help and trash
- install organize-tool, poetry, ruff, git+https://github.com/enzet/map-machine
- default display scale to 100 % (why is it 125% ?)
- manage dotfiles

## per user
- setup syncthing
- setup zsh, oh my zsh and powerline

## Installation

> **Warning**  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/white-gecko/bluejay:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/white-gecko/bluejay:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## ISO

If build on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/learn/universal-blue/#fresh-install-from-an-iso). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/white-gecko/bluejay
```
