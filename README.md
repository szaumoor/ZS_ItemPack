# RoyalProtector's Item Pack

This mod is a collection of items adapted or inspired from other games into the Infinity Engine. Not all items are ported with their original mechanics for several reasons:

- The Infinity Engine may not support certain mechanics from the original games.
- Some original effects are too generic or repetitive, so I avoid duplicating them across multiple items.
- Items that are spoilers or plot-critical in their original games may be reimagined, using only their likeness or inspiration to create new items. No spoilers from the original games are included.
- Adapting items to the Forgotten Realms setting sometimes requires changes to their mechanics, descriptions, or names. I aim to preserve the spirit of each item, but exact replication isn't always possible.
- Translating items into this universe may also require changes for lore consistency. For example, "Stygian Fury" is inspired by Elden Ring's "Rivers of Blood" katana, which references Mohg, the Lord of Blood. In this mod, the story is adapted to fit Orcus, a tangentially similar figure in the Forgotten Realms, resulting in conceptual and mechanical changes while maintaining the item's theme.

When you install a component that introduces a new weapon type (rapier, estoc, or kukri), the mod will also add generic versions of that weapon to various stores in the game. In BGEE, you can find up to +1 versions of these weapons for sale; in BG2EE, up to +3 versions will be available. If you prefer not to add these generic items, you can disable this feature in the configuration file.

If you want spoilers for item descriptions, you can find them in the translation files at `ZS_ItemPack/lang`. For spoilers about where to find the items, you can check the spoiler locations file at `ZS_ItemPack/spoiler_locations.md`.

## Components

Every one of the items is optional. You choose what you want in the game. Currently, the mod adds new items pulled from the following settings:

- A **Forbidden Game** which shall not be named
- **Elden Ring**
- **Dark Souls / Bloodborne**
- Neverwinter Night 1/2
- Mass Effect (yes, you read that right)
- Game of Thrones
- The Legend of Vox Machina (Critical Role)

There are still around 20–30 items that I plan to add but removed them to accelerate the release of the mod. They will be added in future updates. The following settings are also planned but not yet implemented:

- The Witcher
- NieR: Automata
- Lord of the Rings
- ... and more may be added

Additionally, I will also have a section/group which is specifically about adding original items by me, or from YOU, if you want to submit one. More on that later.

## The new weapon types

These are the base characteristics of the new weapon types compared to others in the same group, and beyond unique traits:

- **Estoc**: Estocs are large, two-handed thrusting swords that use the two-handed sword animation. They deal 1d8+1 piercing damage, have a base speed factor of 6, and require both hands to wield. Estocs use the long sword proficiency and have an innate 5% higher chance to score a critical hit. Their attack animations primarily feature thrusting (poke) motions.
- **Kukri**: Kukris are for all intents and purposes considered daggers, but they are one point slower as far as speed factor goes, but critically hit 5% more often.
- **Rapier**: Rapiers are light, thrusting swords that use the short sword animation. They deal 1d6 piercing damage, have a base speed factor of 4, and use the short sword proficiency. Rapiers have a 5% higher chance to score a critical hit compared to standard short swords, and their attack animations emphasize thrusting motions.
- **Shuriken**: Shuriken are essentially darts that deal 1d2 missile but critically hit 10% more often and have a better speed factor. They are more expensive. A variety of shurikens are introduced in the pack including: normal to +5 variants, poison and acid variants, and one that causes bleeding with a small chance of causing a sudden blood loss effect (-10% HP).

## Compatibility and Installation order

This mod should be installed after all other mods that add new creatures to the game, and to be extra safe, after all mods that add new items to the game. Currently, though, it only matters when and if you install Cold Snap, due to a technical detail of how the item is implemented, specifically, it tries to find items that provide immunity to paralysis. If you're confident that's not a problem, you can install it any order with respect to other item packs.

It should be installed before mods that add new kits, as some kits (like my shadowdancer kit) will patch items in this pack, as well as any and all mods that modify items (such as my other mod ZSTweaks).

**WARNING**: If you use EET, I don't recommend you use a mod that transports your equipment from BGEE to BG2EE. I only know of the one that Roxanne made (but you should not use anything they make without a very good reason), but the consequence of this will be that most items will be duplicated. You will find the same items again, or the same weapon but with a higher enchantment level. The mod is not sophisticated enough to handle this possibility, nor do I know how to do it (if it's even possible), and I have very little interest in adding that in.

Also do not that using a mod skip Irenicus' dungeon will prevent you from getting some of the weapons placed there. Consult the spoiler locations file for more information.

## User feedback and how to contribute

If you have any feedback, suggestions, or bug reports, please feel free to reach out to me on Discord or through the mod's page. You can also reach me at `royalprotector@keemail.me` and I will respond eventually. I appreciate all input and will do my best to address any issues.

I am accepting of user submissions for new items. If it's an item that exists in a setting that I like, or I'm interested in it, I may include it. If you have an idea about what to do with it, let me know. And if you want to design a custom item, I can include it as well, you don't need to design how it works, you can just craft a description and I can do my best to include it if I like it. Otherwise, pull requests are welcome. Feel free to contact me if you need help with the contribution process.

## Credits

- To BeamDog and Bioware for the game, obviously.
- zenblack for providing icons for **LITERALLY every item in this mod**. All hail to his mighty icon-making skills.
- zenblack again for brainstorming functionalities and descriptions for some of the items
- dark0dave and others who have helped me with the modding process or by providing resources
- Various people on Discord for offering ideas as to where to put the items, like The Artisan, moggadeet, Fickle Swamp Wench, JDSilvergun, bucketfulofsunshine, among others
- Big kudos to moggaadeet and bucketfulofsunshine for thinking of a quest idea for one of the items and to buckectfulofsunshine for doing the vast majority of the work to code that
- **Big** thanks to moggadeet, JDSilvergun, and others for helping me with Cespenar dialog
- SubtleDoctor for giving me a splstate-free way to hack the engine into giving an item a bonus that applies to Minsc if he wields it. This is always a good thing.
- People on Discord generally for their help
