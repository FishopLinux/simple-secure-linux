#!/bin/bash

# Function to detect the OS and install dependencies
install_dependencies() {
    echo "Detecting your operating system..."

    # Detect the distribution and install required packages
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        OS=$ID
    else
        echo "Unable to detect OS."
        exit 1
    fi

    case $OS in
        ubuntu|debian)
            echo "Installing dependencies for Ubuntu/Debian..."
            sudo apt update && sudo apt install -y lynis ufw
            ;;
        centos|rhel|fedora)
            echo "Installing dependencies for CentOS/Red Hat/Fedora..."
            sudo dnf install -y lynis ufw
            ;;
        arch)
            echo "Installing dependencies for Arch Linux/Manjaro/EndeavourOS..."
            sudo pacman -Syu --noconfirm lynis ufw
            ;;
        *)
            echo "Unsupported OS: $OS. This script supports Ubuntu, Debian, CentOS, Fedora, Red Hat, and Arch Linux."
            exit 1
            ;;
    esac
}

# Function to update the system and apply security measures
secure_system() {
    echo "Updating system and applying security configurations..."

    # Update system packages
    if [ "$OS" == "ubuntu" ] || [ "$OS" == "debian" ]; then
        sudo apt update && sudo apt upgrade -y
    elif [ "$OS" == "centos" ] || [ "$OS" == "rhel" ] || [ "$OS" == "fedora" ]; then
        sudo dnf update -y
    elif [ "$OS" == "arch" ]; then
        sudo pacman -Syu --noconfirm
    fi

    # Secure SSH configuration
    echo "Securing SSH..."
    sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.backup
    sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
    sudo systemctl restart sshd

    # Configure firewall
    echo "Configuring UFW firewall..."
    sudo ufw default deny incoming
    sudo ufw default allow outgoing
    sudo ufw allow ssh
    sudo ufw enable

    # Run Lynis security audit
    echo "Running Lynis security audit..."
    sudo lynis audit system
}

# Display Menu
echo "Please choose an option:"
echo "1. Install dependencies"
echo "2. Secure system"
echo "3. Exit"

# Read user input
read -p "Enter choice [1-4]: " choice

# Execute based on user choice
case $choice in
    1)
        install_dependencies
        ;;
    2)
        secure_system
        ;;
    3)
        echo "Exiting script..."
        exit 0
        ;;
    *)
        echo "Invalid option. Please select between 1-4."
        exit 1
        ;;
esac
