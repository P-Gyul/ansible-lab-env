# Ansible Lab Environment

## Overview

This Ansible project creates a **test environment** featuring:

- **Traefik** reverse proxy with HTTPS support
- **Prometheus** metrics collector
- **Grafana** for visualization with pre-configured dashboards
- **Authelia** for authentication and access control

You can run this environment locally or deploy it remotely to multiple target servers.

---

## Features

- Deploys all services as Docker containers
- Uses Traefik for automatic HTTPS and routing
- Provides dashboards and monitoring out of the box
- Integrates Authelia for secure login and access control
- Supports running on a single host or distributed deployment
- Configures UFW firewall rules to secure the server

---

## Usage

1. **Set up your inventory:**  
   Add your target client IPs to the `hosts` inventory file, grouped as needed.

2. **Prepare target clients:**  
   Ensure the clients have an Ansible user with sudo privileges.

3. **Run the playbook:**  
   Execute the playbook from your control machine to deploy the full stack to the target hosts without needing to install the repo on them.

---

## How It Works

- The playbook handles Docker installation and service setup remotely.
- Traefik manages all inbound web traffic securely via HTTPS.
- Prometheus scrapes metrics from nodes and containers.
- Grafana visualizes collected metrics with ready dashboards.
- Authelia adds a single sign-on layer for authentication.
- UFW (Uncomplicated Firewall) is installed and configured to allow only essential ports (SSH, HTTP, HTTPS) and deny all other incoming traffic, enhancing security.

---

## Prerequisites

- Ansible installed on the control machine
- SSH access with sudo rights on target hosts
- Optional: Vault for encrypting sensitive data like passwords

---

## Firewall Rules (UFW)

The playbook installs and configures UFW on the target Debian-based systems with the following rules:

- Allow SSH (port 22) for remote access
- Allow HTTP (port 80) and HTTPS (port 443) for web traffic
- Deny all other incoming connections by default
- Enable logging for monitoring firewall activity

These rules help protect your servers by limiting network access to only necessary services.

---

## Contributing

Contributions and feedback are welcome! Please open issues or submit pull requests.

---

## License

This project is licensed under the MIT License.
