# Linux Security Guide

This script is designed to automate the hardening of a Linux server by applying simple security practices. It checks and configures various aspects of your system, such as:

- System updates
- Securing SSH
- Configuring a firewall
- Running security tools like **Lynis**, and **rkhunter**

## Dependencies

Before running this script, ensure the following dependencies are installed on your system. The script will automatically detect your operating system and install the necessary tools.

### Required tools:
- **Lynis**: Security auditing tool
- **rkhunter**: Rootkit hunter tool
- **ufw**: Firewall configuration tool

## Installation of dependencies based on your operating system

Before running the script, you need to install the required dependencies. The script will automatically detect your distribution and install the necessary tools.

### For Ubuntu/Debian:

If you are using a distribution based on **Ubuntu** or **Debian**, use the following commands to install the dependencies:

```bash
sudo apt update && sudo apt install -y lynis rkhunter ufw
```

### For CentOS / Red Hat / Fedora:

If you are using a distribution based on **CentOS**, **Red Hat**, or **Fedora**, use `dnf` to install the tools:

```bash
sudo dnf install -y lynis rkhunter ufw
```

### For Arch Linux / Manjaro / EndeavourOS:

If you are using a distribution based on **Arch Linux**, **Manjaro**, or **EndeavourOS**, use `pacman` to install the dependencies:

```bash
sudo pacman -Syu --noconfirm lynis rkhunter ufw
```

## Installation Steps

1. Clone the repository or download the script:

    ```bash
    git clone https://github.com/FishopLinux/simple-secure-linux.git && cd simple-secure-linux
    ```

2. Make the script executable:

    ```bash
    chmod +x main.sh
    ```

3. Run the script:

    ```bash
    sudo ./main.sh
    ```
