# Guide de Sécurisation Linux

Ce script est conçu pour automatiser la sécurisation d'un serveur Linux en appliquant des pratiques simples de sécurité. Il vérifie et configure divers aspects de votre système, tels que la mise à jour du système, la sécurisation de SSH, la configuration d'un pare-feu, et l'exécution d'outils de sécurité tels que **Lynis**, **chkrootkit**, et **rkhunter**.

## Dépendances

Avant d'exécuter ce script, vous devez vous assurer que les dépendances suivantes sont installées sur votre système. Le script détecte automatiquement votre système d'exploitation et installe les outils nécessaires.

### Outils requis :
1. **Lynis** : Outil d'audit de sécurité.
2. **chkrootkit** : Outil de détection de rootkits.
3. **rkhunter** : Outil de détection de rootkits.
4. **ufw** : Outil pour configurer un pare-feu.
   
Installation des dépendances selon votre système d'exploitation

Avant d'exécuter le script, vous devez installer les dépendances nécessaires. Le script détecte automatiquement votre distribution et installe les outils requis.
Pour Ubuntu/Debian :

Si vous utilisez une distribution basée sur Ubuntu ou Debian, utilisez les commandes suivantes pour installer les dépendances :

``sudo apt update
sudo apt install -y lynis chkrootkit rkhunter ufw``

Pour CentOS / Red Hat / Fedora :

Si vous utilisez une distribution basée sur CentOS, Red Hat ou Fedora, utilisez dnf pour installer les outils :

``sudo dnf install -y lynis chkrootkit rkhunter ufw``

Pour Arch Linux / Manjaro / EndeavourOS :

Si vous utilisez une distribution basée sur Arch Linux, Manjaro, ou EndeavourOS, utilisez pacman pour installer les dépendances :

``sudo pacman -Syu --noconfirm lynis chkrootkit rkhunter ufw``
