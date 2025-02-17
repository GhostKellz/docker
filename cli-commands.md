# 🐳 Docker CLI Commands Cheat Sheet

This document serves as a quick reference guide for commonly used Docker commands to manage images, containers, networks, and more.

## 📦 Images

- **List Images**: Display all images on your system.

  ```bash
  docker images
  ```

- **Build Image**: Create an image from a Dockerfile in the current directory.

  ```bash
  docker build -t <image_name>:<tag> .
  ```

- **Remove Image**: Delete an image from your system.

  ```bash
  docker rmi <image_name>:<tag>
  ```

- **Prune Unused Images**: Remove all dangling (unused) images.

  ```bash
  docker image prune
  ```

## 🐋 Containers

- **List Running Containers**: Show all currently running containers.

  ```bash
  docker ps
  ```

- **List All Containers**: Display all containers, including stopped ones.

  ```bash
  docker ps -a
  ```

- **Run a Container**: Create and start a container from an image.

  ```bash
  docker run --name <container_name> <image_name>:<tag>
  ```

- **Run in Detached Mode**: Start a container in the background.

  ```bash
  docker run -d <image_name>:<tag>
  ```

- **Map Ports**: Expose container ports to the host.

  ```bash
  docker run -p <host_port>:<container_port> <image_name>:<tag>
  ```

- **Start/Stop Container**: Initiate or halt a container.

  ```bash
  docker start <container_name>
  docker stop <container_name>
  ```

- **Remove Container**: Delete a stopped container.

  ```bash
  docker rm <container_name>
  ```

- **View Logs**: Display real-time logs from a container.

  ```bash
  docker logs -f <container_name>
  ```

- **Execute Command Inside Container**: Run a command within a running container.

  ```bash
  docker exec -it <container_name> <command>
  ```

## 📂 Volumes

- **List Volumes**: Show all Docker volumes.

  ```bash
  docker volume ls
  ```

- **Create Volume**: Generate a new volume.

  ```bash
  docker volume create <volume_name>
  ```

- **Remove Volume**: Delete a specific volume.

  ```bash
  docker volume rm <volume_name>
  ```

- **Prune Unused Volumes**: Remove all unused volumes.

  ```bash
  docker volume prune
  ```

## 🌐 Networks

- **List Networks**: Display all Docker networks.

  ```bash
  docker network ls
  ```

- **Create Network**: Establish a new network.

  ```bash
  docker network create <network_name>
  ```

- **Connect Container to Network**: Attach a container to a network.

  ```bash
  docker network connect <network_name> <container_name>
  ```

- **Disconnect Container from Network**: Detach a container from a network.

  ```bash
  docker network disconnect <network_name> <container_name>
  ```

- **Remove Network**: Delete a specific network.

  ```bash
  docker network rm <network_name>
  ```

## 🛠️ System

- **View System Information**: Display detailed information about Docker installation.

  ```bash
  docker info
  ```

- **Prune System**: Remove all unused data (containers, networks, images, and build cache).

  ```bash
  docker system prune
  ```

- **Check Disk Usage**: Show Docker disk usage statistics.

  ```bash
  docker system df
  ```

## 🔗 Additional Resources

- **HomeLab and Work Cheat Sheet**: A comprehensive cheatsheet for more than Docker.

  [https://docs.google.com/document/d/1lgNeLhNfEcAtVS1rWsoE07bSD2feyw0pwIk2sWAc_BA/edit?tab=t.0](https://docs.google.com/document/d/1lgNeLhNfEcAtVS1rWsoE07bSD2feyw0pwIk2sWAc_BA/edit?tab=t.0)

- **Christian Lempa's Docker Cheat Sheet**: An extensive collection of Docker commands and tips.

  [https://github.com/ChristianLempa/cheat-sheets/blob/main/tools/docker.md](https://github.com/ChristianLempa/cheat-sheets/blob/main/tools/docker.md)

- **Docker Official CLI Cheat Sheet**: The official Docker cheat sheet providing a summary of essential commands.

  [https://docs.docker.com/get-started/docker_cheatsheet.pdf](https://docs.docker.com/get-started/docker_cheatsheet.pdf)

- **Docker Labs' Ultimate Cheat Sheet**: A detailed guide covering various Docker commands and concepts.

  [https://dockerlabs.collabnix.com/docker/cheatsheet/](https://dockerlabs.collabnix.com/docker/cheatsheet/)

---

*Note: Replace placeholders (e.g., `<image_name>`, `<container_name>`) with your specific names as needed.*

This cheat sheet is designed to provide quick access to common Docker commands. For more detailed information and advanced usage, refer to the linked resources above.
