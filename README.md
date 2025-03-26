# Suicide Bomb SWEP for Garry's Mod

## Description
This is a custom Garry's Mod SWEP (Scripted Weapon) that allows players to equip and detonate a suicide bomb. The weapon consists of two stages:
1. **Suicide Bomb (weapon_suicidebomb.lua)** - The player equips the bomb using a left-click.
2. **Explode (weapon_explode.lua)** - The player detonates, creating an explosion that deals area damage.

## Features
- **Custom Weapon:** Adds a unique weapon that allows for explosive self-destruction.
- **Simple Mechanics:** Left-click to wear the bomb, which then replaces itself with an explosion trigger.
- **Explosion Effect:** Spawns an explosion at the player’s position, dealing significant damage.

## Installation
1. Download the `weapon_suicidebomb.lua` and `weapon_explode.lua` files.
2. Place them in your Garry's Mod `lua/weapons/` directory.
3. Restart your server or reload the weapons using `lua_reloadweapons` in the console.

## Usage
1. Equip the **Suicide Bomb** from the weapons menu.
2. Left-click to wear the bomb, which switches to the **EXPLODE** weapon.
3. Left-click again to detonate, causing an explosion at your location.

## Configuration
- The explosion magnitude and blast radius can be adjusted in `weapon_explode.lua`.
- Modify `SWEP.ViewModel` and `SWEP.WorldModel` for different visual effects.

## License
This project is licensed under the MIT License.

