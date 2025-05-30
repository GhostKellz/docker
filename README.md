# 🐳 Docker Repository
---
<p align="center">
  <img src="https://img.shields.io/badge/Docker-Container_Platform-2496ed?logo=docker&logoColor=white"/> &nbsp;&nbsp;
  <img src="https://img.shields.io/badge/Compose-Docker_orchestration-2496ed?logo=docker&logoColor=white"/> &nbsp;&nbsp;
  <img src="https://img.shields.io/badge/Portainer-Docker_GUI-13BEF9?logo=portainer&logoColor=white"/> &nbsp;&nbsp;
  <img src="https://img.shields.io/badge/NGINX-Reverse_Proxy-009639?logo=nginx&logoColor=white"/> &nbsp;&nbsp;
  <img src="https://img.shields.io/badge/Optimized-⚡🚀🔒-00bcd4"/>
</p>

---
> 🛠️ **About this repository:**  
> Docker Compose stacks and orchestration files for containerized services, centralized via Portainer, reverse proxied with NGINX, and tuned for performance, security, and efficient service deployment.
---
## 📂 Directory Structure

```plaintext
docker/
├── README.md                   # Overview of the repository
├── docker-compose.yml          # Core services compose file
├── cli-commands.md             # Common Docker CLI commands
├── stacks/                     # Organized Docker stacks by service
│   ├── nginx/                  # Nginx reverse proxy with ACME SSL
│   │   └── docker-compose.yml
│   └── portainer/              # Portainer container
│       └── docker-compose.yml
├── compose/                    # Docker Compose configurations for services
│   ├── technitium-dns/         # Technitium DNS container
│   │   └── docker-compose.yml
│   ├── unifi-controller/       # Unifi Controller container
│   │   └── docker-compose.yml
│   ├── uptime-kuma/            # Uptime Kuma container
│   │   └── docker-compose.yml
│   ├── vaultwarden/            # Vaultwarden container
│   │   └── docker-compose.yml
│   ├── git/                    # Git container (e.g., Gitea/GitLab)
│   │   └── docker-compose.yml
│   ├── dockerproxy/            # Docker Proxy container
│   │   └── docker-compose.yml
│   ├── tools/                  # Various tools container
│   │   └── docker-compose.yml
│   ├── prometheus/             # Prometheus monitoring stack
│   │   └── docker-compose.yml
│   ├── wiki-js/                # Wiki.js documentation container
│   │   └── docker-compose.yml
│   ├── hudu/                   # Hudu documentation container
│   │   └── docker-compose.yml
│   ├── oauth2/                 # OAuth2 Proxy container
│   │   └── docker-compose.yml
│   ├── cloudflare-ddns/        # Cloudflare DDNS container
│   │   └── docker-compose.yml
│   └── powerdns/               # PowerDNS authoritative server
│       └── docker-compose.yml
└── scripts/                    # Useful Docker scripts
    ├── prune.sh                # Cleanup old containers/images
    ├── backup.sh               # Backup container volumes
    └── restore.sh              # Restore from backups
```

## 🛠️ Getting Started

1. **Clone the Repository**
   ```bash
   git clone https://github.com/<your-username>/docker.git
   cd docker
   ```

2. **Navigate to the Desired Service**
   ```bash
   cd stacks/nginx-proxy-manager
   docker-compose up -d
   ```

3. **Check Container Status**
   ```bash
   docker ps
   ```

4. **Stop and Remove Containers**
   ```bash
   docker-compose down
   ```

## 🧠 Best Practices

- **Environment Variables**: Always use `.env` files for sensitive information and add them to `.gitignore`.
- **Backup Regularly**: Utilize `scripts/backup.sh` for regular volume backups.
- **Cleanup Unused Resources**: Run `scripts/prune.sh` periodically.
- **Modular Stacks**: Each service has its own Docker Compose file for clarity and maintainability.

## 📖 Additional Resources

- [Docker Documentation](https://docs.docker.com/)
- [Docker Compose Documentation](https://docs.docker.com/compose/)
- [Portainer Documentation](https://docs.portainer.io/)

## 🔐 Security Considerations

- Always update containers to the latest versions to patch vulnerabilities.
- Never expose services like Portainer directly to the internet without proper authentication.
- Use Tailscale or other VPN solutions for secure remote access.

## ⚙️ Useful Commands

```bash
# List all running containers
docker ps

# Stop all containers
docker stop $(docker ps -q)

# Remove all containers
docker rm $(docker ps -aq)

# View container logs
docker-compose logs -f

# Prune unused images, containers, and volumes
docker system prune -af
```

## 🚀 Future Plans

- Add GitHub Actions for automated builds.
- Integrate with Proxmox infrastructure.
- Add more Docker Compose files for additional services.

---

**Created and maintained by CKTech.**

