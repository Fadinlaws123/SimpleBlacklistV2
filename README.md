<div align="center">

# 🚫 SimpleBlacklist V2

### A configurable standalone FiveM blacklist system for vehicles, weapons, and player ped models.

<p>
  <a href="https://simpledevelopments.org/store"><img src="https://img.shields.io/badge/Explore_Our_Store-5865F2?style=for-the-badge&logo=googlechrome&logoColor=white" /></a>
  <a href="https://discord.gg/RquDVTfDwu"><img src="https://img.shields.io/badge/Join_Our_Discord-5865F2?style=for-the-badge&logo=discord&logoColor=white" /></a>
  <a href="https://github.com/Fadinlaws123/SimpleBlacklistV2"><img src="https://img.shields.io/badge/View_on_GitHub-181717?style=for-the-badge&logo=github&logoColor=white" /></a>
</p>

<p>
  <img src="https://img.shields.io/badge/FiveM-Standalone-FF6B35?style=flat-square&logo=fivem&logoColor=white" />
  <img src="https://img.shields.io/badge/Blacklist-Vehicles_Weapons_Peds-238636?style=flat-square" />
  <img src="https://img.shields.io/badge/Status-Release_Ready-238636?style=flat-square" />
  <img src="https://img.shields.io/github/stars/Fadinlaws123/SimpleBlacklistV2?style=flat-square&logo=github&label=Stars" />
</p>

</div>

---

## 📖 About

**SimpleBlacklist V2** is a configurable FiveM resource for restricting unwanted vehicles, weapons, and player ped models.

Each blacklist can be enabled independently, while separate bypass groups allow selected ACE groups to ignore all restrictions or only specific blacklist categories.

---

## ✨ Features

- Vehicle blacklist
- Weapon blacklist
- Ped model blacklist
- Individually toggleable blacklist systems
- Global and category-specific ACE bypass groups
- Configurable notification system
- Vehicle and weapon blacklist exports for integrations
- Built-in version checking
- Standalone resource design

---

## ⚙️ Configuration

Everything is managed through `config.lua`, including:

- Enabled blacklist categories
- Restricted vehicle spawn names
- Restricted ped models
- Restricted weapon names
- Notification system
- Global bypass groups
- Vehicle, ped, and weapon-specific bypass groups

Supported notification configuration currently includes `okok`, `oxlib`, and standard chat handling as defined by the resource.

---

## 🔌 Exports

The resource exposes blacklist checks for integrations:

- `isWeaponBlacklisted`
- `isVehicleBlacklisted`

---

## 📥 Installation

1. Place `SimpleBlacklistV2` in your server's resources directory.
2. Configure `config.lua` for your server.
3. Add the following to your `server.cfg`:

```cfg
ensure SimpleBlacklistV2
```

4. Restart the resource or server.

---

## 📋 Requirements

- FiveM server
- No framework required
- Notification dependency only when selecting an external notification option

---

## 🌐 SimpleDevelopments

SimpleBlacklist V2 is developed and maintained by **SimpleDevelopments** as the newer generation of the original SimpleBlacklist resource.

<div align="center">

### Keep it Simple. Keep it SimpleDevelopments.

</div>
