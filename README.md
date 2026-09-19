# Kitty-themes
# 🪐 Celestial & Earth — Premium Kitty Terminal Themes

Welcome to a collection of **7 premium, hand-calibrated, low-fatigue color palettes** designed exclusively for the Kitty terminal emulator. 

Instead of chasing typical screaming-neon tropes, these themes are crafted to deliver striking atmospheres, deep background layers, and highly legible, organic text contrast that stays comfortable over long sessions.

---

## 🎨 The Themes

### 🌌 The Cosmic & Dark Series
*   **Matrix Night:** A sleek, tactical storm gray base (`#262626`) paired with clean sage green highlights.
*   **Blood Moon:** A luxurious, warm gothic aubergine canvas (`#241B26`) cut with powdery dusty rose ash text.
*   **Infinity Orbit:** An expansive, deep space midnight navy environment (`#021526`) featuring icy sky-blue text.
*   **Night Revenant:** An intense, eerie obsidian void background (`#120E15`) with glowing neon ectoplasm mint accents.

### 🌲 The Organic & Matte Series
*   **Ceder Shadow (Dark):** A calming, dense woodland shadow base (`#171F19`) wrapped cleanly in warm cashmere sand.
*   **Ceder Shadow (Light):** A premium, glare-free concrete stone layout (`#BDB6A6`) utilizing deeply saturated dark matte ink.
*   **Red Dominion:** A regal imperial theme blending a rich velvet wine-burgundy (`#420D14`) with majestic gold leaf.

---

## 🚀 Quick Installation

To apply any of these configurations to your local setup, follow these simple steps:

### 1. Download Your Choice
Create a folder for your themes and pull them from this repository, or copy the configuration text directly from the `themes/` directory inside this repo into a local file (e.g., `matrix_night.conf`).

### 2. Move to Kitty Config Directory
Place the `.conf` files directly into your Kitty configuration folder:
```bash
# Example for Matrix Night
mv matrix_night.conf ~/.config/kitty/
```

### 3. Include It in Your Main Profile
Open up your core `~/.config/kitty/kitty.conf` file and append this line to the very bottom:
```conf
include ./matrix_night.conf
```

### 4. Live Reload
Press `Ctrl+Shift+F5` inside your active Kitty terminal to instantly hot-reload your interface and check out your brand new environment!

### ⚡ Automated Script Installation (Universal)
This installer script works across all Linux distributions. Simply open your terminal, clone the repository, and run the wizard:

```bash
git clone https://github.com/Lainlwared/Kitty-themes.git
cd Kitty-themes
chmod +x install.sh
./install.sh
```
