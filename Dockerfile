FROM archlinux:base

RUN useradd -m -G wheel browser -p '$6$xyz$HxEAUeHvhggYMB/x.Y.goFln.dLNMV/eUggV3jJ7r0kLRQzJovfxucLpHYFBNAwcl5EFCOkDPIrAOy7IcxB6y.'

RUN pacman -Syu --noconfirm

RUN pacman --noconfirm -S chromium sudo nvidia-dkms opencl-nvidia nvidia-container-toolkit pipewire pipewire-alsa

RUN echo '%wheel ALL=(ALL) ALL' >> /etc/sudoers

USER browser

WORKDIR /home/browser
