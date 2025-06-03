# RoyalProtector's Item Pack

This mod is a collection of items translated from other games into the IE engine. Some items from other games are not ported **functionally** exactly the same way for various reasons, including:

- The game doesn't support the mechanics of the originals
- The effects are too generic on various items originally and I don't want to repeat myself on multiple items
- The item involves a spoiler or is a plot-critical item. In those cases, I may use just the likeness of the item in the game, to create a new shiny item based on it, or inspired by it to various degrees.
- The item's conversion into the Forgotten Realms setting necessitates a change in item's mechanics. including their description and names. I try to keep the spirit of the item, but sometimes it's not possible to keep the original mechanics.

As usual with my mods, every item is encapsulated in a different component, so you're not forced to include any item that you don't like for any reason.

If you wish to have a precise description of items, or location, check the files spoiler_descriptions.md and spoiler_locations.md, respectively.

Finally, installing a component which introduces one of the new weapon types (rapier, estoc, kukri) will automatically insert generic items of that type into the game, mostly in stores. This means that in BGEE you'll have access to up to +2 weapons of that type in stores, and in BG2EE, you'll have access to up to +3 weapons of that type in stores.

## Components
---
<details>

<summary><b> Forbidden-game-inspired </b></summary>

These items are taken from a forbidden game that shall not be named. Due to plot critical reasons, a few items were changed in some degrees, retaining less from the original design, but it still aligns with the original design in some dimension.

**Component 101:** Add Everburn Blade +1 (two-handed sword)

This component adds a new cool flaming +1 two-handed sword that is more powerful against demons, and also when wielded by tieflings. This item will be wielded by the Cambion in Irenicus' dungeon in BG2, and in BG1, it will be wielded Azothet's servants at the end of Dorn's questline (not lootable), and Simmeon himself, who will drop it but not use it.

**Component 102:** Add Bloodthirst +3 (dagger)

This component adds a new evil-only, Bhaal-inspired crimson twisted dagger that is more likely to critically hit and reduces the resistance to piercing damage on targets. Tamoko drops this item.

**Component 103:** Add Crimson Mischief +3 (short sword)

This component adds an evil-only short sword that deals more damage the more wounded the target is, and can occassionally (4% chance) reduce the HP of the target by 20%.

**Component 104:** Add Assassin's Touch +1 (dagger)

This component adds a new dagger that deals more damage to targets that are asleep, and allows thieves to use it more efficiently. Single-classed assassins get the most benefit out of it.

**Component 105:** Add Ritual Dagger (dagger)

This component adds a new dagger that is not very accurate but deals a good amount of damage. It can be used to get beneficial effects if you're willing to pay the price.

**Component 106:** Add Cold Snap +1 (dagger)

This component adds a new dagger that deals varying amounts of extra cold damage and may very briefly snap freeze some targets if they fail their saves.

**Component 107:** Add Spell Siphon +1 (dagger)

This component adds a new dagger which allows wizards and sorcerers to recall level 1 spells when something is killed with the dagger. On rare occasions, it will also restore level 2 spells.

**Component 108:** Add Cruel Sting +1 (long sword)

This component adds a new long sword with a spider and poisonous theme which excels when hitting targets that are webbed or otherwise incapacitated.

**Component 109:** Add Judgment +4 (warhammer)

This adds a new powerful warhammer that deals crushing and fire damage and increases defenses. It has the ability to switch to a non-lethal mode which frees allies (or anyone else) from paralysis, stun, and hold effects on hit.

**Component 110:** Add The Deathstalker Mantle (cloak)

This adds a new cool cloak for assassins and other stabby-stabby characters. Upon killing an enemy, become immediately invisible and gain a +1 bonus to THAC0 and damage for 2 rounds. This effect can only trigger once per round.


</details>

---
<details>

<summary><b> Souls inspired </b></summary>

**Component 215:** Add Moonlit Slumber (Elden Ring - Sword of St. Trina, long sword)

**Component 216:** Add Icicle (Elden Ring - Frozen Needle; rapier)

**Component 217:** Add Stygian Fury (Elden Ring - Rivers of Blood; katana)

**Component 220:** Add Harp Bow (Elden Ring - Harp Bow; shortbow)

**Component 222:** Add Crimson of Life (Elden Ring - Crimson Amber Amulet; necklace)

**Component 227:** Add Bloody Sting (Elden Ring - Bloody Helice; estoc)

**Component 228:** Add Storm's Monarch (Elden Ring - Dragon King's Cragblade; estoc)


</details>

---
<details>

<summary><b> Mass Effect inspired </b></summary>

**Component 401:** Add Rod of Illusive Protections (rod)

**Component 402:** Add Omniblade (universal sword)

**Component 403:** = Add Phantom's Blade (ninja-to)

</details>

---

<details>

<summary><b> NWN / NWN2 inspired </b></summary>

**Component 301:** Add Lawgiver +1 (bastard sword)

**Component 302:** Add The Left Hand (dagger)

**Component 303:** Add Master Li's Way (katana)

**Component 304:** Add Kukri of the Eclipse (dagger / kukri)

**Component 305:** Add Sharpshadow Blade (dagger / kukri)

**Component 306:** Add Black Rider Quill (rapier)

**Component 307:** Add Blade of the Rashemi (two-handed sword)

This sword protects the wielder from magic, and causes 10% spell cast failure on hit for 5/2 rounds. Deals 1d12+1 damage, and acts as a +2 weapon if a berserker, barbarian, o Rashemi warrior is wielding it.

**Component 308:** Add Shining Light of Lathander (two-handed sword)

**Component 309:** Add Goblinsplitter (axe)


</details>

---

<details>

<summary><b> TV / Film inspired </b></summary>

**Component 501:** Add Needle +1 (Game of Thrones; rapier)

</details>

---

## The new weapon types

These are the base characteristics of the new weapon types compared to others in the same group, and beyond unique traits:

- **Estoc**: Estocs are big thrusting swords that use the two-handed sword animation, inflicts piercing damage, requires 2 hands to use it, but uses the proficiency type of long sword. Damage-wise, they have a base damage of 1d8+1 and a base speed factor of 6, and they are innately allowed to critically hit 5% more often. Animation-wise, they do mostly poke animations.
- **Kukri**: Kukris are for all intents and purposes considered dagger, but they are one point slower as far as speed factor goes, but critically hit 5% more often.
- **Rapier**: Rapiers are small thrusting swords that use the short sword animation, inflict piercing damage, use the short sword proficiency, and can critically hit 5% more often and use a base speed factor of 4. They use the piercing animation more often than the short sword.

## Compatibility and Installation order

This mod should be installed after all other mods that add new creatures to the game, and to be extra safe, after all mods that add new items to the game. Currently, though, it only matters when and if you install Cold Snap, due to a technical detail of how the item is implemented, specifically, it tries to find items that provide immunity to paralysis. If you're confident that's not a problem, you can install it any order with respect to other item packs.

It should be installed before mods that add new kits, as some kits (like my shadowdancer kit) will patch items in this pack, as well as any and all mods tweak packs that modify items.

## Credits
- To BeamDog and Bioware for the game, obviously.
- zenblack for providing icons for **LITERALLY every item in this mod**. All hail to his mighty icon-making skills.
- zenblack again for brainstorming functionalities and descriptions for some of the items
- dark0dave and others who have helped me with the modding process or by providing resources
- Llewren for offering feedback and ideas for the item descriptions
- Various people on Discord for offering ideas as to where to put the items, like The Artisan, moggadeet, Fickle Swamp Wench, JDSilvergun, among others
- People on Discord generally for their help
