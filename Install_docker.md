# Docker installation
## On Windows

1. Make sure that WSL2 is available on your machine.

2. Download the [Docker desktop installer](https://docs.docker.com/desktop/install/windows-install/) by clicking on the blue button

![](windows_docker_install.png)

3. Execute the installer and choose to use wsl NOT hyper-v

## On Linux

There is an official convenience script, use these two commands to get the script and run it

```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh --dry-run
```