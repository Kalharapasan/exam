# Docker Commands - සිංහල/English Reference Guide

## 1. System Setup / Preparation Commands

| Command | Sinhala Explanation | English Explanation | Example |
|---|---|---|---|
| `lsb_release -a` | ඔබේ Linux distribution එකේ version විස්තර පෙන්වයි | Shows Linux distribution and version details | `lsb_release -a` |
| `docker --version` | Install කරලා තියෙන Docker version එක බලනවා | Checks installed Docker version | `docker --version` |
| `sudo apt-get update` | System එකේ package list එක update කරනවා (install කරන්න කලින්) | Updates the package index before installing software | `sudo apt-get update` |
| `sudo apt-get upgrade` | Install කරලා තියෙන packages ටික අලුත් version වලට upgrade කරනවා | Upgrades already installed packages | `sudo apt-get upgrade` |
| `sudo apt install docker.io` | Docker software එක install කරනවා | Installs the Docker engine | `sudo apt install docker.io` |
| `sudo systemctl status docker` | Docker service එක run වෙනවද කියලා බලනවා | Checks whether Docker service is running | `sudo systemctl status docker` |

## 2. Docker Info / Diagnostics Commands

| Command | Sinhala Explanation | English Explanation | Example |
|---|---|---|---|
| `sudo docker version` | Docker client + server (engine) version විස්තර | Shows Docker client and server version details | `sudo docker version` |
| `docker` | Docker එකේ තියෙන ප්‍රධාන commands list එක පෙන්වයි | Shows list of all available docker commands | `docker` |
| `docker image --help` | image related commands ගැන help එක | Shows help for image-related subcommands | `docker image --help` |
| `sudo docker info` | Docker system එකේ සමස්ත තොරතුරු (containers, images ගණන ආදිය) | Shows overall Docker system information | `sudo docker info` |
| `sudo docker system df` | Docker disk space කොපමණ use කරනවද කියලා බලනවා | Shows Docker disk usage (images, containers, volumes) | `sudo docker system df` |
| `sudo docker system prune` | Use නොකරන images/containers/networks ඉවත් කරලා space clean කරනවා | Removes unused data to free up space | `sudo docker system prune` |
| `sudo docker stats` | Run වෙනවා containers වල CPU/Memory usage live බලනවා | Shows live resource usage stats of running containers | `sudo docker stats` |

## 3. Image Management Commands

| Command | Sinhala Explanation | English Explanation | Example |
|---|---|---|---|
| `sudo docker search httpd` | Docker Hub එකේ image එකක් search කරනවා | Searches Docker Hub for an image | `sudo docker search httpd` |
| `sudo docker images` | Local machine එකේ download කරලා තියෙන images list කරනවා | Lists all locally downloaded images | `sudo docker images` |
| `sudo docker pull httpd` | Docker Hub එකෙන් image එකක් download කරනවා | Pulls (downloads) an image from Docker Hub | `sudo docker pull httpd` |

## 4. Container Lifecycle Commands

| Command | Sinhala Explanation | English Explanation | Example |
|---|---|---|---|
| `sudo docker ps` | දැනට run වෙනවා (active) containers list කරනවා | Lists currently running containers | `sudo docker ps` |
| ~~`sudo docker pd -a`~~ → **`sudo docker ps -a`** ⚠️ typo | ⚠️ මේක වැරදියි. හරි command එක `ps -a` — active/stopped සියලුම containers පෙන්වයි | ⚠️ Typo in original — correct is `ps -a`, shows all containers (running + stopped) | `sudo docker ps -a` |
| `sudo docker create --name [container_name] [image_name]` | Image එකකින් container එකක් හදනවා (run නොකර, just create) | Creates a container from an image without starting it | `sudo docker create --name web1 httpd` |
| `sudo docker start [container_name]` | හදලා තියෙන (stopped) container එකක් start කරනවා | Starts an existing (stopped) container | `sudo docker start web1` |
| `sudo docker run --name [container_name] [image_name]` | Image එකකින් අලුත් container එකක් හදලා එකෙටම run කරනවා | Creates and starts a new container from an image | `sudo docker run --name web2 httpd` |
| `sudo docker run -d --name webpage3 httpd` | Container එකක් background එකේ (detached mode) run කරනවා | Runs a container in detached/background mode | `sudo docker run -d --name webpage3 httpd` |
| `sudo docker stop [container_name/id]` | Run වෙනවා container එකක් නවත්වනවා | Stops a running container | `sudo docker stop web1` |
| `sudo docker rm [container_name/id]` | Stop කරලා තියෙන container එකක් සම්පූර්ණයෙන්ම delete කරනවා | Deletes a stopped container | `sudo docker rm web1` |
| ~~`sudo docker rm -f[container_id]`~~ → **`sudo docker rm -f [container]`** ⚠️ space missing | ⚠️ flag එකට පස්සේ space එකක් දාන්න ඕන. `-f` කියන්නේ force — run වෙනවා container එකක්වත් force කරලා delete කරනවා | ⚠️ Needs a space after `-f`. Forcefully removes a container even if it's running | `sudo docker rm -f web1` |

## 5. Working Inside a Container

| Command | Sinhala Explanation | English Explanation | Example |
|---|---|---|---|
| `sudo docker exec -it [container] /bin/sh` | Container එක ඇතුළට gih terminal එකකින් (sh shell) වැඩ කරනවා | Opens an interactive shell (`sh`) inside a running container | `sudo docker exec -it web1 /bin/sh` |
| `sudo docker exec -it [container] /bin/bash` | Container එක ඇතුළට gih terminal එකකින් (bash shell) වැඩ කරනවා | Opens an interactive bash shell inside a running container | `sudo docker exec -it web1 /bin/bash` |
| `cd /bin` | Container එක ඇතුළේ `/bin` folder එකට යනවා | Changes directory to `/bin` inside the container | `cd /bin` |
| `ls -lrt` | Files list කරනවා, කාලානුක්‍රමිකව (පරණම එක උඩින්) විස්තර සමඟ | Lists files with details, sorted by modification time (oldest first) | `ls -lrt` |
| `exit` | Container එක ඇතුළේ terminal එකෙන් එළියට යනවා | Exits the container's shell session | `exit` |

## 6. Copying Files & Inspecting Containers

| Command | Sinhala Explanation | English Explanation | Example |
|---|---|---|---|
| ~~`sudo docker exec [container] username -a`~~ → **`whoami`** ⚠️ | ⚠️ `username -a` valid command එකක් නෙවෙයි. current user බලන්න `whoami` හෝ `id` use කරන්න | ⚠️ `username -a` isn't a valid command — use `whoami` or `id` to check current user | `sudo docker exec web1 whoami` |
| ~~`sudo docker exec [container] mkdir/tmp/Kalhara`~~ → **`mkdir /tmp/Kalhara`** ⚠️ space missing | ⚠️ path එකට කලින් space එකක් ඕන. Container එක ඇතුළේ folder එකක් හදනවා | ⚠️ Needs space before path. Creates a folder inside the container | `sudo docker exec web1 mkdir /tmp/Kalhara` |
| ~~`sudo docker exec [container] ls/tmp`~~ → **`ls /tmp`** ⚠️ space missing | ⚠️ space එකක් ඕන. `/tmp` folder එකේ files list කරනවා | ⚠️ Needs space. Lists files inside `/tmp` folder | `sudo docker exec web1 ls /tmp` |
| `sudo docker cp queson.txt [container]:/tmp` | Host machine එකේ ඉඳන් container එකට file එකක් copy කරනවා | Copies a file from the host machine into the container | `sudo docker cp queson.txt web1:/tmp` |
| `sudo docker exec [container] ls /tmp` | Copy කරපු file එක තියෙනවද කියලා `/tmp` බලනවා | Verifies the copied file exists inside `/tmp` | `sudo docker exec web1 ls /tmp` |
| ~~`sudo docker log [container]`~~ → **`sudo docker logs [container]`** ⚠️ | ⚠️ correct command එක `logs` (plural). Container එකේ log messages බලනවා | ⚠️ Correct command is `logs` (plural). Shows the container's log output | `sudo docker logs web1` |
| `sudo docker top [container]`  | Container එක ඇතුළේ run වෙනවා processes list කරනවා | Shows the running processes inside a container | `sudo docker top web1` |

## 7. Building Custom Images (Dockerfile)

| Command | Sinhala Explanation | English Explanation | Example |
|---|---|---|---|
| `sudo touch Dockerfile` | image එකක් define කරන්න `Dockerfile` කියන empty file එකක් හදනවා | Creates an empty `Dockerfile` used to define a custom image | `sudo touch Dockerfile` |
| ~~`sudo docker build -t [container_id]`~~ → **`docker build -t [name:tag] .`** ⚠️ | ⚠️ මේකේ image එකේ නම සහ build කරන path එකත් (`.`) අවශ්‍යයි | ⚠️ Missing image name/tag and the build context path (`.`) | `sudo docker build -t myimage:v1 .` |
| `sudo docker run [container_id/image_name]` | Build කරපු image එකෙන් container එකක් run කරනවා | Runs a container from the built image | `sudo docker run myimage:v1` |

---

### ⚠️ සටහන (Note)
ඉහත table එකේ "typo" mark කරලා තියෙන commands (`pd -a`, `rm -f[...]`, `mkdir/tmp`, `ls/tmp`, `docker log`, `build -t [container_id]`, `username -a`) — ඔබේ original notes එකේ තිබ්බ විදියටම ලියපු නම් error දෙනවා. නිවැරදි syntax එක (space + full flag) එක්කම use කරන්න.
