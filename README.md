# Kitty-themes
# 🪐 Celestial & Earth — Premium Kitty Terminal Themes

Welcome to a collection of **7 premium, hand-calibrated, low-fatigue color palettes** designed exclusively for the Kitty terminal emulator. 

Instead of chasing typical screaming-neon tropes, these themes are crafted to deliver striking atmospheres, deep background layers, and highly legible, organic text contrast that stays comfortable over long sessions.

For the terminal itself, i will link the creator and also another themes repo as credit for my idea

https://github.com/kovidgoyal/kitty
https://github.com/dexpota/kitty-themes
---

## 🎨 The Themes

### 🌌 The Cosmic & Dark Series
*   **Matrix Night:** A sleek, tactical storm gray base (`#262626`) paired with clean sage green highlights.
  <img width="1266" height="1306" alt="image" src="https://github.com/user-attachments/assets/8cf5869f-1461-49d9-a8aa-0fefc2134765" />

*   **Blood Moon:** A luxurious, warm gothic aubergine canvas (`#241B26`) cut with powdery dusty rose ash text.
  <img width="1268" height="1298" alt="image" src="https://github.com/user-attachments/assets/b6aa1a77-6f89-4a98-a2cc-bc8912e4679e" />

*   **Infinity Orbit:** An expansive, deep space midnight navy environment (`#021526`) featuring icy sky-blue text.
  <img width="1268" height="1300" alt="image" src="https://github.com/user-attachments/assets/7bf9157e-1785-44dc-b639-d5ed4b9b3f44" />

*   **Night Revenant:** An intense, eerie obsidian void background (`#120E15`) with glowing neon ectoplasm mint accents.
<img width="1267" height="1296" alt="image" src="https://github.com/user-attachments/assets/04435d85-98bb-43f4-a3bd-2ca2e42c4ecf" />

### 🌲 The Organic & Matte Series
*   **Ceder Shadow (Dark):** A calming, dense woodland shadow base (`#171F19`) wrapped cleanly in warm cashmere sand.
  <img width="1267" height="1298" alt="image" src="https://github.com/user-attachments/assets/7d4beb6f-fd06-40ef-ae21-cf0ec0b4e22f" />

*   **Ceder Shadow (Light):** A premium, glare-free concrete stone layout (`#BDB6A6`) utilizing deeply saturated dark matte ink.
  <img width="1266" height="1295" alt="image" src="https://github.com/user-attachments/assets/3bf59fb8-6d04-4d9a-8ec9-a5f0abb06384" />


*   **Red Dominion:** A regal imperial theme blending a rich velvet wine-burgundy (`#420D14`) with majestic gold leaf.
<img width="1263" height="1298" alt="image" src="https://github.com/user-attachments/assets/b93aa4e9-4e66-4180-b0e9-28ed97649ba5" />

*   **Velvet Carbon:** A premium, low-fatigue charcoal blue-gray base (`#222831`) featuring soft, luxurious moon cashmere accents.
  <img width="1266" height="1300" alt="image" src="https://github.com/user-attachments/assets/af5a3bdf-7f8f-43a0-9f85-2ac828852710" />

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
git clone https://github.com/Lainiwared/Kitty-themes.git
cd Kitty-themes
chmod +x install.sh
./install.sh
```
