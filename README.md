# Docker OS S

A minimal, isolated Unix-style shell environment encapsulated within a Docker container. It leverages a custom translation layer to provide native Turkish command aliases and automation macros while enforcing a complete filesystem sandbox.

## Key Architecture

- **Strict Isolation:** Operates fully within the container namespace with no host directory bindings. Exiting the shell completely purges the state.
- **Custom Translation Layer:** Maps POSIX utilities to localized aliases (`ls` ➔ `liste`, `cd` ➔ `konum`, etc.) via efficient Bash runtime shell options.
- **Programmable Automation:** Native implementation of complex sequence pipelines (`dizinyapgec` for atomic directory creation and navigation).
- **Interactive Completion:** Full GNU Readline integration providing predictive Tab-completion for custom aliases and container directory trees.

## Core Command Mappings

| Local Command | Native Command | Operational Context |
| :--- | :--- | :--- |
| `liste` | `ls -la` | Detailed directory layout with hidden metadata. |
| `konum <dir>` | `cd` | Contextual working directory navigation. |
| `neredeyim` | `pwd` | Returns active namespace path. |
| `dizinyap <name>` | `mkdir -p` | Generates recursive directory structures. |
| `yenidosya <name>` | `touch` | Instantiates blank files. |
| `sil <target>` | `rm -rf` | Non-interactive recursive purge of files/folders. |
| `dizinyapgec <dir>` | *Macro Function* | Provisions directory and immediately shifts context into it. |
| `yazveolustur <f> <m>`| *Macro Function* | Streams inline string payloads into specified targets. |
| `hafiza` / `diskdurumu`| *Sys Analytics* | Reports container memory metrics and local disk volume layout. |
| `kapat` | `exit` | Shuts down shell session and destroys volatile container instance. |

## Deployment

Ensure Docker Engine is active. Execute the following pipeline from the project root:

1. **Build Container Image:**
```bash
docker build -t docker-os-s .
```

2. **Instantiate Isolated Session:**
```bash
docker run -it --rm --name selfitis_s_kutusu docker-os-s
```

## Maintainer
Designed and engineered by **Zekeriyya Said Altay (Selfitis)** as a low-level research project on containerization boundaries, custom command-line interfaces, and POSIX shell customization.
