# Docker Commands - Word by Word Breakdown (සිංහල)

මෙතන ඔබ දුන්න **හැම command එකක්ම**, එකේ තියෙන **හැම word/part එකක්ම** වෙන වෙනම කඩලා පැහැදිලි කරලා තියෙනවා. එකක්වත් skip කරලා නෑ.

---

### 1. `lsb_release -a`
| Word | Meaning |
|---|---|
| `lsb_release` | Linux distribution/version details බලන command එක |
| `-a` | "all" කියන flag එක — සම්පූර්ණ details ම (Distributor, Description, Release, Codename) පෙන්වන්න කියනවා |

### 2. `docker --version`
| Word | Meaning |
|---|---|
| `docker` | Docker program එක call කරනවා |
| `--version` | Install වෙලා තියෙන Docker එකේ version number එක පෙන්වන්න කියන flag එක |

### 3. `sudo apt-get update`
| Word | Meaning |
|---|---|
| `sudo` | "superuser do" — admin/root permission එකෙන් command එක run කරනවා |
| `apt-get` | Ubuntu/Debian systems වල packages manage කරන tool එක |
| `update` | apt-get එකට කියන sub-command එක — repository list එකේ අලුත්ම info download කරන්න |

### 4. `sudo apt-get upgrade`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `apt-get` | Package manage කරන tool එක |
| `upgrade` | Install වෙලා තියෙන packages ටික අලුත්ම version වලට update කරන sub-command එක |

### 5. `sudo apt install docker.io`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `apt` | Package manager tool එක (apt-get එකේ නවතම version) |
| `install` | Package එකක් install කරන්න කියන sub-command එක |
| `docker.io` | Install කරන package එකේ නම — Ubuntu repository එකේ තියෙන Docker engine package එක |

### 6. `sudo systemctl status docker`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `systemctl` | Linux services manage කරන tool එක (start/stop/status check) |
| `status` | Service එකේ current state (running/stopped) බලන sub-command එක |
| `docker` | status check කරන service එකේ නම |

### 7. `sudo docker version`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `version` | Client + Server (Engine) දෙකෙන්ම version details පෙන්වන sub-command එක |

### 8. `docker`
| Word | Meaning |
|---|---|
| `docker` | Argument නැතුව run කළොත් — Docker එකේ තියෙන සියලුම commands හා options list එක පෙන්වයි |

### 9. `docker image --help`
| Word | Meaning |
|---|---|
| `docker` | Docker program එක call කරනවා |
| `image` | Images related commands group එක |
| `--help` | ඒ group එකට අදාළ commands ගැන help/usage info පෙන්වන flag එක |

### 10. `sudo docker info`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `info` | System එකේ සමස්ත Docker තොරතුරු (containers ගණන, images ගණන, storage driver ආදිය) පෙන්වන sub-command එක |

### 11. `sudo docker system df`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `system` | System-level commands group එක |
| `df` | "disk free" — images/containers/volumes කොපමණ disk space use කරනවද කියලා පෙන්වන sub-command එක |

### 12. `sudo docker system prune`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `system` | System-level commands group එක |
| `prune` | Use නොකරන (unused) containers/images/networks ඉවත් කරලා space clean කරන sub-command එක |

### 13. `sudo docker stats`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `stats` | Run වෙනවා containers වල CPU/Memory/Network usage live stream එකක් විදියට පෙන්වන sub-command එක |

### 14. `sudo docker search httpd`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `search` | Docker Hub එකේ images සොයන sub-command එක |
| `httpd` | සොයන image එකේ නම (Apache HTTP Server image) |

### 15. `sudo docker images`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `images` | Local machine එකේ download කරලා (save කරලා) තියෙන images ටික list කරන sub-command එක |

### 16. `sudo docker pull httpd`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `pull` | Docker Hub එකෙන් image එකක් download කරන sub-command එක |
| `httpd` | Download කරන image එකේ නම |

### 17. `sudo docker ps`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `ps` | "process status" — දැනට **run වෙනවා** (active) containers ටික list කරන sub-command එක |

### 18. `sudo docker pd -a` ⚠️ (typo — හරි command එක `docker ps -a`)
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `pd` | ⚠️ මේක වැරදියි — Docker එකේ `pd` කියලා command එකක් නෑ. හරි command එක `ps` |
| `-a` | "all" flag එක — active + stopped **සියලුම** containers පෙන්වන්න කියනවා |

### 19. `sudo docker create --name [container_name] [image_name]`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `create` | Image එකකින් container එකක් **හදනවා, නමුත් start කරන්නේ නෑ** |
| `--name` | Container එකට custom නමක් දෙන්න කියන flag එක |
| `[container_name]` | ඔබ දෙන container එකේ නම (placeholder — ඔබම නමක් දාන්න ඕන) |
| `[image_name]` | මේ container එක හදන image එකේ නම (placeholder) |

### 20. `sudo docker start [container_name]`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `start` | කලින් හදලා තියෙන (stopped) container එකක් start කරන sub-command එක |
| `[container_name]` | Start කරන container එකේ නම හෝ ID (placeholder) |

### 21. `sudo docker run --name [container_name] [image_name]`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `run` | Image එකකින් **අලුත් container එකක් හදලා, ඒක එකවර start කරන** sub-command එක |
| `--name` | Container එකට නමක් දෙන flag එක |
| `[container_name]` | ඔබ දෙන container එකේ නම (placeholder) |
| `[image_name]` | Container එක හදන image එකේ නම (placeholder) |

### 22. `sudo docker stop [container_name,container_id]`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `stop` | Run වෙනවා container එකක් නවත්වන sub-command එක |
| `[container_name,container_id]` | නවත්වන container එකේ නම හෝ ID (ඕනෑම එකක් use කරන්න පුළුවන් — comma කියන්නේ "either/or" කියන අර්ථයෙන්) |

### 23. `sudo docker run -d --name webpage3 httpd`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `run` | Container එකක් හදලා start කරන sub-command එක |
| `-d` | "detached" — container එක **background** එකේ run කරන්න කියන flag එක (terminal එක block වෙන්නේ නෑ) |
| `--name` | Container එකට නමක් දෙන flag එක |
| `webpage3` | මේ නිශ්චිත container එකට දෙන නම |
| `httpd` | Use කරන image එකේ නම |

### 24. `sudo docker rm [container_name,container_id]`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `rm` | "remove" — stop කරලා තියෙන container එකක් delete කරන sub-command එක |
| `[container_name,container_id]` | Delete කරන container එකේ නම හෝ ID (placeholder) |

### 25. `sudo docker rm -f[container_id,container_name]` ⚠️ (space එකක් missing)
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `rm` | Container එකක් delete කරන sub-command එක |
| `-f` | "force" — run වෙනවා container එකක් වුනත්, forcefully delete කරන්න කියන flag එක. ⚠️ මෙතන `-f[container...]` කියලා තියෙන්නේ space නැතුව — space එකක් දාන්න ඕන |
| `[container_id,container_name]` | Force delete කරන container එකේ ID හෝ නම (placeholder) |

### 26. `sudo docker exec -it [container_id,container_name] /bin/sh`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `exec` | Run වෙනවා container එකක් ඇතුළේ command එකක් execute කරන sub-command එක |
| `-it` | `-i` (interactive — input ගන්නවා) + `-t` (terminal එකක් allocate කරනවා) — දෙකම එකතු කරලා |
| `[container_id,container_name]` | Command එක run කරන container එකේ ID හෝ නම (placeholder) |
| `/bin/sh` | Container එක ඇතුළේ run කරන program එක — "sh" shell එක (lightweight shell) |

### 27. `sudo docker exec -it [container_id,container_name] /bin/bash`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `exec` | Run වෙනවා container එකක් ඇතුළේ command එකක් execute කරන sub-command එක |
| `-it` | Interactive + terminal flags දෙක |
| `[container_id,container_name]` | Container එකේ ID හෝ නම (placeholder) |
| `/bin/bash` | Container එක ඇතුළේ run කරන program එක — "bash" shell එක (more features තියෙන shell) |

### 28. `cd /bin`
| Word | Meaning |
|---|---|
| `cd` | "change directory" — folder එකක් වෙනස් කරන Linux command එක |
| `/bin` | යන්න ඕන directory එකේ path එක — binary/executable files තියෙන folder එක |

### 29. `ls -lrt`
| Word | Meaning |
|---|---|
| `ls` | "list" — current directory එකේ files list කරන command එක |
| `-l` | "long format" — permissions, owner, size, date වගේ detail ටික සමඟ |
| `-r` | "reverse" — sort order එක අනිත් පැත්තට හරවනවා |
| `-t` | "time" — modification time අනුව sort කරනවා |

### 30. `Exit`
| Word | Meaning |
|---|---|
| `Exit` | Container එකේ shell session එකෙන් එළියට යන command එක (සාමාන්‍යයෙන් lowercase `exit` විදියට ලියනවා) |

### 31. `sudo docker exec [container_id,container_name] username -a` ⚠️
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `exec` | Container එක ඇතුළේ command එකක් execute කරන sub-command එක |
| `[container_id,container_name]` | Container එකේ ID හෝ නම (placeholder) |
| `username` | ⚠️ මේක valid Linux command එකක් නෙවෙයි — current user බලන්න `whoami` හෝ `id` use කරන්න ඕන |
| `-a` | `username` command එකට දෙන flag එකක් (නමුත් command එකම වැරදි නිසා මේකත් වැඩ කරන්නේ නෑ) |

### 32. `sudo docker exec [container_id,container_name] mkdir/tmp/Kalhara` ⚠️ (space missing)
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `exec` | Container එක ඇතුළේ command එකක් execute කරන sub-command එක |
| `[container_id,container_name]` | Container එකේ ID හෝ නම (placeholder) |
| `mkdir` | "make directory" — folder එකක් හදන command එක |
| `/tmp/Kalhara` | ⚠️ `mkdir` එකට කලින් space එකක් ඕන (`mkdir /tmp/Kalhara`). හදන folder එකේ path එක — `/tmp` folder එක ඇතුළේ `Kalhara` කියලා folder එකක් |

### 33. `sudo docker exec [container_id,container_name] ls/tmp` ⚠️ (space missing)
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `exec` | Container එක ඇතුළේ command එකක් execute කරන sub-command එක |
| `[container_id,container_name]` | Container එකේ ID හෝ නම (placeholder) |
| `ls/tmp` | ⚠️ space එකක් නැති නිසා වැරදියි — හරි විදිය `ls /tmp`. `/tmp` folder එකේ files list කරන්න |

### 34. `sudo docker cp queson.txt [container_id,container_name]:/tmp`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `cp` | "copy" — host machine එකෙන් container එකට (හෝ ඊට පරිස්සම) file copy කරන sub-command එක |
| `queson.txt` | Copy කරන source file එකේ නම (host machine එකේ තියෙන file එක) |
| `[container_id,container_name]:/tmp` | Destination — container එකේ ID/නම, `:` කින් පස්සේ container එක ඇතුළේ file එක copy වෙන path එක (`/tmp`) |

### 35. `sudo docker exec [container_id,container_name] ls /tmp`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `exec` | Container එක ඇතුළේ command එකක් execute කරන sub-command එක |
| `[container_id,container_name]` | Container එකේ ID හෝ නම (placeholder) |
| `ls` | Files list කරන command එක |
| `/tmp` | List කරන directory එකේ path එක (copy කරපු file එක තියෙනවද බලන්න) |

### 36. `sudo docker log [container_name]` ⚠️ (හරි command එක `logs`)
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `log` | ⚠️ මේක වැරදියි — Docker එකේ sub-command එක `logs` (plural). Container එකේ output/log messages බලන්න |
| `[container_name]` | Log බලන container එකේ නම (placeholder) |

### 37. `sudo docker top [container_name]`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `top` | Container එක ඇතුළේ run වෙනවා processes list කරන sub-command එක |
| `[container_name]` | Processes බලන container එකේ නම (placeholder) |

### 38. `sudo touch Dockerfile`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `touch` | Empty file එකක් හදන (හෝ existing file එකක් modify-date update කරන) Linux command එක |
| `Dockerfile` | හදන file එකේ නම — custom image එකක් build කරන්න instructions ලියන special file එක |

### 39. `sudo docker build -t [container_id]` ⚠️ (incomplete command)
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `build` | Dockerfile එකකින් image එකක් build කරන sub-command එක |
| `-t` | "tag" — build කරන image එකට නමක්/tag එකක් දෙන flag එක |
| `[container_id]` | ⚠️ මෙතන image එකේ නම/tag එක දාන්න ඕන (container_id කියන්නේ නිවැරදි නෑ). ⚠️ ඊට අමතරව අවසානයේ build කරන context path එක (`.`) එකත් අවශ්‍යයි — නැත්නම් command එක fail වෙනවා |

### 40. `sudo docker run [container_id,container_name]`
| Word | Meaning |
|---|---|
| `sudo` | Root permission එකෙන් run කරනවා |
| `docker` | Docker program එක call කරනවා |
| `run` | Image එකකින් container එකක් හදලා start කරන sub-command එක |
| `[container_id,container_name]` | Run කරන image එකේ ID හෝ නම (placeholder — මෙතන "container" කියලා තිබ්බත්, run කරන්නේ **image** එකෙන්) |

---
### 🔑 පොදු symbols/patterns
| Symbol | Meaning |
|---|---|
| `[ ]` | ඔබ ඔබේම value එකක් (name/id) දාන්න ඕන තැන — placeholder එකක් |
| `-x` (single dash) | "short flag" — එක character එකක flag (`-a`, `-d`, `-f`, `-t`) |
| `--xxxx` (double dash) | "long flag" — full word එකක flag (`--name`, `--help`, `--version`) |
| `,` (comma, e.g. `[name,id]`) | "හෝ" කියන අර්ථය — name එකක් **හෝ** id එකක් දෙකෙන් එකක් දෙන්න පුළුවන් |
