# RoyalProtector's Item Pack

This mod is a collection of items adapted or inspired from other games into the Infinity Engine. Not all items are ported with their original mechanics for several reasons:

- The Infinity Engine may not support certain mechanics from the original games.
- Some original effects are too generic or repetitive, so I avoid duplicating them across multiple items.
- Items that are spoilers or plot-critical in their original games may be reimagined, using only their likeness or inspiration to create new items.
- Adapting items to the Forgotten Realms setting sometimes requires changes to their mechanics, descriptions, or names. I aim to preserve the spirit of each item, but exact replication isn't always possible.
- Translating items into this universe may also require changes for lore consistency. For example, "Stygian Fury" is inspired by Elden Ring's "Rivers of Blood" katana, which references Mohg, the Lord of Blood. In this mod, the story is adapted to fit Orcus, a tangentially similar figure in the Forgotten Realms, resulting in conceptual and mechanical changes while maintaining the item's theme.

When you install a component that introduces a new weapon type (rapier, estoc, or kukri), the mod will also add generic versions of that weapon to various stores in the game. In BGEE, you can find up to +1 versions of these weapons for sale; in BG2EE, up to +3 versions will be available. If you prefer not to add these generic items, you can disable this feature in the configuration file.

If you want spoilers for item descriptions, you can find them in the translation files at ZS_ItemPack/lang. For spoilers about where to find the items, you can check the spoiler locations file at ZS_ItemPack/spoiler_locations.md.

## Components

---

<details>

<summary><b> Forbidden-game-inspired </b></summary>

These items are taken from a forbidden game that shall not be named. Due to plot critical reasons, a few items were changed in some degrees, retaining less from the original design, but it still aligns with it in some dimension.

**Component 101:** Add Everburn Blade

This component adds a new cool flaming +1 two-handed sword that acts as +3 vs. demons, and by default +2 when wielded by tieflings. It inflicts fire damage, which is enhanced when tieflings wield it, and demons cannot resist its flame. Available for BG2EE and BGEE

Known issue: To bypass the fire immunity most fiends have, the sword will use a different method to reduce the current health of the demons, and this quantity will not be put in the combat log.

**Component 102:** Add Bloodthirst

This component adds a new evil-only, Bhaal-inspired crimson twisted +3 dagger that increases the chances to critically hit, deals a minor extra amount of slashing damage due to its warped shape, and reduces the resistance to piercing damage on targets. In BG2, it's a +4 dagger, and Cespenar can upgrade it to a +6 version with 10,000 gold and a rogue stone. Available for BG2EE and BGEE.

**Component 103:** Add Crimson Mischief

This component adds an evil-only +3 short sword that deals more damage the more wounded the target is, negative energy damage, and can occassionally (4% chance) reduce the HP of the target by 20%. Cespenar can upgrade it to +5 in ToB with 12,500 gold and a rogue stone. Available for BG2EE and BGEE.

**Component 104:** Add Assassin's Touch

This component adds a new +1 dagger that deals more damage to targets that are asleep, and allows thieves to use it more efficiently. Single-classed assassins get the most benefit out of it. Available for BG2EE and BGEE. In BG2EE, it is a +2 weapon, identical in every other respect.

**Component 105:** Add Ritual Dagger

This component adds a new magical +2 dagger that is not very accurate but may cause bleeding, and increases the damage of the wielder each time it spills blood for 7 seconds. It can be used to get more beneficial effects if you're willing to spill your own blood. Available for BG2EE and BGEE.

**Component 106:** Add Cold Snap

This component adds a new +1 dagger that deals varying amounts of cold damage and may very briefly snap freeze and weaken some targets if they fail their saves. Available for BG2EE and BGEE. In BG2EE, it is a +2 weapon, identical in every other respect.

**Component 107:** Add Spell Siphon

This component adds a new +1 dagger which allows wizards and sorcerers to recall level 1 spells when something is killed with the dagger. On rare occasions, it will also restore level 2 spells. Available for BG2EE and BGEE. It's a +2 dagger in BG2, with slightly improved stats.

**Component 108:** Add Cruel Sting

This component adds a new +1 long sword with a spider and poisonous theme which excels when hitting targets that are webbed or otherwise incapacitated. Available for BG2EE and BGEE. It's a +2 long sword in BG2 with minor differences otherwise.

**Component 109:** Add Judgment

This adds a new powerful war hammer that deals crushing and fire damage and increases defenses. It has the ability to switch to a non-lethal mode which frees allies (or anyone else) from paralysis, stun, and hold effects on hit. Available for BG2EE.

**Component 110:** Add The Deathstalker Mantle

This adds a new cool cloak for assassins and other stabby-stabby characters, passively benefitting single-classed thieves, and assassins. Once per round, upon killing an enemy, the user becomes immediately invisible and gains a +1 bonus to THAC0 and damage for 2 rounds. It also grants minor combat bonuses to single-classed thieves, assassins, and blackguards. Available for BG2EE and BGEE.

</details>

---

<details>

<summary><b> Souls inspired </b></summary>

**Component 211:** Add Sage Ring (Dark Souls 3 - Sage Ring; ring)

This will add a nifty new ring that casters of all kinds can use to improve casting speed and casting level by 1. Applies to arcane and divine magic. Available for BG2EE and BGEE.

**Component 213:** Add Hawk Ring (Dark Souls 3 - Hawk Ring; ring)

This will add a new ring that increases slightly movement speed, and ranged thac0 and damage. Available for BG2EE and BGEE.

**Component 215:** Add Moonlit Slumber (Elden Ring - Sword of St. Trina, long sword)

This adds a new +2 long sword which is themed around sleep and dreams. It has a chance to put targets to sleep, as well as releasing an 5-round soporiferous mist that puts targets to sleep for 3 rounds. Available for BG2EE and BGEE.

**Component 216:** Add Icicle (Elden Ring - Frozen Needle; rapier)

This adds a new +4 rapier that deals piercing and cold damage, and has a mode where you can shoot its blade at the target, dealing less piercing damage, but dealing more cold damage. Available for BG2EE.

**Component 217:** Add Stygian Fury (Elden Ring - Rivers of Blood; katana)

This adds a new +3 katana that deals slashing and fire damage, and has a chance to poison on contact, which can make targets suffer a slight case of blood boil if they're poisoned too quickly. Available for BG2EE.

**Component 220:** Add Harp Bow (Elden Ring - Harp Bow; shortbow)

This adds a new +1 shortbow that is more effective when wielded by bards, and has a 15% chance of releasing a tune when shooting, which provides a minor bard song buff to the whole party for 2 rounds (it stacks with other songs). The configuration file may be used to turn it into a longbow, if desired. In BG2EE, it is a +2 weapon. Available for BG2EE and BGEE.

**Component 222:** Add Crimson of Life (Elden Ring - Crimson Amber Amulet; necklace)

This adds a new necklace that increases the maximum HP of the wearer by 15%. Available for BG2EE and BGEE.

**Component 224:** Add Periapt of Renewal (Elden Ring - Blessed Dew Amulet; necklace)

This adds a new Lathander-inspired necklace that provides a regeneration of 1 HP per turn. Available for BG2EE and BGEE.

**Component 227:** Add Bloody Sting (Elden Ring - Bloody Helice; estoc)

This adds a new +3 estoc inspired by a certain lord of blood, that has a chance of causing a lot of bleeding, including a chance to buff its wielder occasionally when blood is spilt. Available for BG2EE.

**Component 228:** Add Storm's Monarch (Elden Ring - Dragon King's Cragblade; estoc)

This adds a new +3 estoc that deals lightning damage, which increases the movement speed of the wielder, and allows the user to use the ability 'Blinkbolt' twice per day, teleporting to a target, and dealing significant electric damage to it and enemies around, while buffing the wielder briefly. Available for BG2EE.

</details>

---

<details>

<summary><b> NWN / NWN2 inspired </b></summary>

**Component 301:** Add Lawgiver

This adds a new +1 bastard sword that is more effective defensively and offensively when battling foes of the chaotic variety. Available for BG2EE and BGEE.

**Component 302:** Add The Left Hand

This adds a new +1 dagger that enhances dual-wielded capabilities, as well as enhancing the overall damage while doing so. Available for BG2EE and BGEE.

**Component 303:** Add Master Li's Way

This adds a new +2 katana that deals extra acid damage. Available for BG2EE and BGEE.

**Component 304:** Add Kukri of the Eclipse

This adds a new +4 kukri that deals negative energy damage, which cannot be resisted by the living, while the undead are healed by it. Available for BG2EE.

**Component 307:** Add Blade of the Rashemi

This adds a +1 two-handed sword that protects the wielder from magic, causes 10% spell cast failure on hit for 5/2 rounds, with a chance of causing casters to reduce their casting speed by a factor of 2. Deals 1d12+1 damage, and acts as a +2 weapon in every sense (including THAC0 and Damage) if a berserker, barbarian, or Minsc is wielding it. Available for BG2EE.

**Component 308:** Add Shining Light of Lathander

This adds a +2 two-handed sword that acts as a +4 weapon vs. undead, which emits a blinding light that causes a slight weakness to hostile undead around the wielder, and can emit through a charge ability a blinding radiant light that causes damage, especially to undead and vampires, particularly. Available for BG2EE.

**Component 309:** Add Goblinsplitter

This adds a +0 axe that deals extra damage to all goblinoids and acts as +2 against them, with an extra +1 piercing damage on hit. It will be placed in locations where goblins are found. Available for BG2EE and BGEE.

**Component 311:** Add Mercykiller Blade

This adds a new +3 rapier that deals +1 fire damage, and 1d4+2 to targets that are evil. Available for BG2EE.

</details>

---

<details>

<summary><b> Mass Effect inspired </b></summary>

**Component 401:** Add Rod of Illusive Protections (rod)

This adds a new rod which activates several illusionary defenses on the user: Nond-Detection, Blur, Mirror Image, and Improved Invisibility. It can be used once per day. Available for BG2EE.

**Component 402:** Add Omniblade (universal sword)

This adds a new universal sword that can be used by any class that is a mage or a sorcerer (including multiclass). Single-classed mages and sorcerers get the most benefit out of it. It deals normal long sword damage, with an extra +1 magic damage. The item can be upgraded with a charge ability which depends on the level of the wielder, extending itself to a +6 weapon at level 31. This weapon cannot be equipped, even with the Use Any Item ability, unless the wielder belongs to the right class. Available for BG2EE and BGEE.

**Component 403:** Add Phantom's Blade (ninja-to)

This adds a new +5 ninja-to that has a 20% chance on strike of forcing a save vs. Death at -3 or die from a vorpal strike. Available for BG2EE during the ToB portion.

</details>

---

<details>

<summary><b> TV / Film inspired </b></summary>

**Component 501:** Add Needle +1 (Game of Thrones - Needle; rapier)

This adds a new +1 rapier that is more effective when wielded by characters of the shorty races and sometimes causes bleeding wounds on hit.

**Component 502:** Add Craven Edge (The Legend of Vox Machina - Craven Edge; two-handed sword)

This adds a new +4 two-handed sword that occasionally causes bleeding on hit and has an increased chance to critically hit. When bleeding is triggered, the wielder is healed for the same amount of damage dealt. However, there is a small chance that non-vampire wielders will go berserk for 2 rounds when the bleeding effect occurs.

</details>

---

## The new weapon types

These are the base characteristics of the new weapon types compared to others in the same group, and beyond unique traits:

- **Estoc**: Estocs are large, two-handed thrusting swords that use the two-handed sword animation. They deal 1d8+1 piercing damage, have a base speed factor of 6, and require both hands to wield. Estocs use the long sword proficiency and have an innate 5% higher chance to score a critical hit. Their attack animations primarily feature thrusting (poke) motions.
- **Kukri**: Kukris are for all intents and purposes considered daggers, but they are one point slower as far as speed factor goes, but critically hit 5% more often.
- **Rapier**: Rapiers are light, thrusting swords that use the short sword animation. They deal 1d6 piercing damage, have a base speed factor of 4, and use the short sword proficiency. Rapiers have a 5% higher chance to score a critical hit compared to standard short swords, and their attack animations emphasize thrusting motions.
- Shuriken: Shurikens are essentially darts that deal 1d2 missile but critically hit 10% more often and have a better speed factor. They are more expensive. Various varieties are introduced in the pack including: normal to +5 variants, poison and acid variants, and one that causes bleeding with a small chance of causing a sudden blood loss effect.

## Compatibility and Installation order

This mod should be installed after all other mods that add new creatures to the game, and to be extra safe, after all mods that add new items to the game. Currently, though, it only matters when and if you install Cold Snap, due to a technical detail of how the item is implemented, specifically, it tries to find items that provide immunity to paralysis. If you're confident that's not a problem, you can install it any order with respect to other item packs.

It should be installed before mods that add new kits, as some kits (like my shadowdancer kit) will patch items in this pack, as well as any and all mods that modify items (such as my other mod ZSTweaks).

**WARNING**: If you use EET, I don't recommend you use a mod that transports your equipment from BGEE to BG2EE. I only know of the one that Roxanne made (but you should not use anything they make without a very good reason), but the consequence of this will be that most items will be duplicated. You will find the same items again, or the same weapon but with a higher enchantment level. The mod is not sophisticated enough to handle this possibility, nor do I know how to do it (if it's even possible), and I have very little interest in adding that in.

## Credits

- To BeamDog and Bioware for the game, obviously.
- zenblack for providing icons for **LITERALLY every item in this mod**. All hail to his mighty icon-making skills.
- zenblack again for brainstorming functionalities and descriptions for some of the items
- dark0dave and others who have helped me with the modding process or by providing resources
- Various people on Discord for offering ideas as to where to put the items, like The Artisan, moggadeet, Fickle Swamp Wench, JDSilvergun, among others
- **Big** thanks to moggadeet, JDSilvergun, and others for helping me with Cespenar dialog
- SubtleDoctor for giving me a splstate-free way to hack the engine into giving an item a bonus that applies to Minsc if he wields it. This is always a good thing.
- People on Discord generally for their help
