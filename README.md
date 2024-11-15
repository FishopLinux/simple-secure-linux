Linux Security Guide

This script is designed to automate the hardening of a Linux server by applying simple security practices. It checks and configures various aspects of your system, such as system updates, securing SSH, configuring a firewall, and running security tools like Lynis, chkrootkit, and rkhunter.
Dependencies

Before running this script, make sure that the following dependencies are installed on your system. The script automatically detects your operating system and installs the necessary tools.
Required tools:

    Lynis: Security auditing tool.
    chkrootkit: Rootkit detection tool.
    rkhunter: Rootkit hunter tool.
    ufw: Firewall configuration tool.

Installation of dependencies based on your operating system

Before running the script, you need to install the required dependencies. The script will automatically detect your distribution and install the necessary tools.
For Ubuntu/Debian:

If you are using a distribution based on Ubuntu or Debian, use the following commands to install the dependencies:

`sudo apt update && sudo apt install -y lynis chkrootkit rkhunter ufw`

For CentOS / Red Hat / Fedora:

If you are using a distribution based on CentOS, Red Hat, or Fedora, use dnf to install the tools:

`sudo dnf install -y lynis chkrootkit rkhunter ufw`

For Arch Linux / Manjaro / EndeavourOS:

If you are using a distribution based on Arch Linux, Manjaro, or EndeavourOS, use pacman to install the dependencies:

`sudo pacman -Syu --noconfirm lynis chkrootkit rkhunter ufw`

Installation

    Clone the repository or download the script:

`git clone https://github.com/FishopLinux/simple-secure-linux.git
cd simple-secure-linux`

    Make the script executable:

`chmod +x main.sh`

    Run the script:

`./main.sh`
