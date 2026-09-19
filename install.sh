#!/usr/bin/env bash

# ==============================================================================
# Script: install.sh
# Description: Interactive theme installer for Lainlwared's Kitty Themes.
# Author: Lainlwared
# ==============================================================================

# Colors for script output
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

KITTY_CONFIG_DIR="$HOME/.config/kitty"
THEMES_DIR="$(dirname "$(readlink -f "$0")")/themes"

# Fallback path if script isn't run inside cloned folder
if [ ! -d "$THEMES_DIR" ]; then
    THEMES_DIR="./themes"
fi

clear
echo -e "${CYAN}======================================================================${NC}"
echo -e "${CYAN}      🪐 Welcome to the Celestial & Earth Theme Installer 🪐         ${NC}"
echo -e "${CYAN}======================================================================${NC}"
echo ""

# Double check kitty config directory exists
if [ ! -d "$KITTY_CONFIG_DIR" ]; then
    echo -e "${YELLOW}[!] Kitty configuration directory not found. Creating it at $KITTY_CONFIG_DIR...${NC}"
    mkdir -p "$KITTY_CONFIG_DIR"
fi

# List of themes mapping to actual filenames
themes=(
    "Matrix Night"
    "Blood Moon"
    "Infinity Orbit"
    "Night Revenant"
    "Ceder Shadow (Dark)"
    "Ceder Shadow (Light)"
    "Red Dominion"
    "Velvet Carbon"
)

files=(
    "matrix_night.conf"
    "blood_moon.conf"
    "infinity_orbit.conf"
    "night_revenant.conf"
    "ceder_shadow_dark.conf"
    "ceder_shadow_light.conf"
    "red_dominion.conf"
    "velvet_carbon.conf"
)

echo -e "Please choose a theme to install:"
for i in "${!themes[@]}"; do
    printf "  ${CYAN}[%d]${NC} %s\n" "$((i+1))" "${themes[$i]}"
done
echo -e "  ${RED}[0]${NC} Exit Installer"
echo ""

while true; do
    read -rp "Enter choice [0-${#themes[@]}]: " choice
    if [[ "$choice" -eq 0 ]]; then
        echo -e "${YELLOW}Installation cancelled. See you space cowboy!${NC}"
        exit 0
    elif [[ "$choice" -gt 0 && "$choice" -le "${#themes[@]}" ]]; then
        idx=$((choice-1))
        selected_theme="${themes[$idx]}"
        selected_file="${files[$idx]}"
        break
    else
        echo -e "${RED}Invalid option. Please try again.${NC}"
    fi
done

echo ""
echo -e "Installing ${GREEN}${selected_theme}${NC}..."

# Check if file exists in the repository clone folder
if [ ! -f "$THEMES_DIR/$selected_file" ]; then
    echo -e "${RED}[X] Error: Could not find theme file: $THEMES_DIR/$selected_file${NC}"
    echo -e "Make sure you are running this script from inside your cloned repository directory."
    exit 1
fi

# Copy the file across to local machine kitty path
cp "$THEMES_DIR/$selected_file" "$KITTY_CONFIG_DIR/current-theme.conf"

# Append include line to main kitty.conf if it's not already there
if [ -f "$KITTY_CONFIG_DIR/kitty.conf" ]; then
    if ! grep -q "current-theme.conf" "$KITTY_CONFIG_DIR/kitty.conf"; then
        echo -e "${YELLOW}[!] Linking current-theme.conf inside your main kitty.conf...${NC}"
        echo -e "\n# Active Celestial & Earth Theme Layout\ninclude ./current-theme.conf" >> "$KITTY_CONFIG_DIR/kitty.conf"
    fi
else
    echo -e "${YELLOW}[!] Creating main kitty.conf with theme hook...${NC}"
    echo -e "include ./current-theme.conf" > "$KITTY_CONFIG_DIR/kitty.conf"
fi

echo ""
echo -e "${GREEN}[✓] Success! ${selected_theme} has been completely installed.${NC}"
echo -e "💡 Press ${CYAN}Ctrl+Shift+F5${NC} inside your active Kitty window to instantly trigger a live reload!"
echo ""
