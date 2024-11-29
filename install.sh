#!/bin/bash

# Funktionen
install_macos() {
  echo "Installiere Tools für macOS..."

  # Sicherstellen, dass Homebrew installiert ist
  if ! command -v brew &>/dev/null; then
    echo "Homebrew wird installiert..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
    echo "Homebrew ist bereits installiert."
  fi

  # Homebrew aktualisieren
  echo "Homebrew aktualisieren..."
  brew update

  # Tools installieren
  tools=(
    ffmpegthumbnailer
    ffmpeg
    sevenzip
    jq
    poppler
    fd
    ripgrep
    fzf
    imagemagick
    fastfetch
    zsh
    tmux
    neovim
    eza
    starship
    wezterm
    yazi
    git
    git stow
  )

  echo "Tools installieren: ${tools[*]}"
  brew install "${tools[@]}"

  # JetBrains Mono Nerd Font installieren
  echo "JetBrains Mono Nerd Font installieren..."
  brew tap homebrew/cask-fonts
  brew install --cask font-jetbrains-mono-nerd-font

  # SketchyBar installieren
  echo "SketchyBar installieren..."
  brew tap FelixKratz/formulae
  brew install sketchybar

  # Aerospace installieren
  echo "Aerospace installieren..."
  brew tap nikitabobko/tap
  brew install --cask nikitabobko/tap/aerospace

  # Zsh als Standard-Shell setzen (falls benötigt)
  if [[ $SHELL != *zsh ]]; then
    echo "Zsh als Standard-Shell festlegen..."
    chsh -s /bin/zsh
  fi

  echo "Installation für macOS abgeschlossen!"
}

install_linux() {
  echo "Installiere Tools für Linux (Arch)..."

  # Sicherstellen, dass pacman auf dem neuesten Stand ist
  echo "Pacman aktualisieren..."
  sudo pacman -Syu --noconfirm

  # Tools installieren
  tools=(
    ffmpegthumbnailer
    ffmpeg
    p7zip
    jq
    poppler
    fd
    ripgrep
    fzf
    imagemagick
    fastfetch
    zsh
    tmux
    neovim
    eza
    starship
    wezterm
    yazi
    git
    git stow
    ttf-jetbrains-mono-nerd
  )

  echo "Tools installieren: ${tools[*]}"
  sudo pacman -S --noconfirm "${tools[@]}"

  # Zsh als Standard-Shell setzen (falls benötigt)
  if [[ $SHELL != *zsh ]]; then
    echo "Zsh als Standard-Shell festlegen..."
    chsh -s "$(which zsh)"
  fi

  echo "Installation für Linux abgeschlossen!"
}

# Hauptlogik
usage() {
  echo "Verwendung: $0 -m (macOS) | -l (Linux)"
  exit 1
}

if [[ $# -ne 1 ]]; then
  usage
fi

while getopts "ml" opt; do
  case $opt in
    m)
      install_macos
      ;;
    l)
      install_linux
      ;;
    *)
      usage
      ;;
  esac
done
