# NiceDamage (Reloaded)

**NiceDamage (Reloaded)** is a lightweight combat text font addon for World of Warcraft that allows you to customize the font and size of damage and healing numbers displayed during combat.

It modernizes the classic "Pepsi" combat text style by adding a configuration menu, font scaling, and support for additional high-visibility fonts.

---

## ⚠️ Important: Application of Changes
Due to the way the World of Warcraft engine loads 3D world text:
* **Changing the Font:** Requires you to **Log Out** to the character selection screen and log back in. A `/reload` will NOT work.
* **Changing the Size:** Takes effect **instantly** without needing to relog or reload.

---

## Features

* **Custom Font Selection:** Choose from a curated list of popular combat fonts including Pepsi, Bangers, Big Noodle Titling, Expressway, and more.
* **Font Scaling:** Real-time adjustment of damage number sizes.
* **SharedMedia Support:** Automatically detects fonts from other addons installed in your game.

---

## Configuration

Access the settings panel using:
* `Escape` > `Options` > `Addons` > `NiceDamage (Reloaded)`.

---

## Included Fonts

**NiceDamage (Reloaded)** comes bundled with a curated selection of popular combat fonts.

* **Pepsi Modern:** The classic look that started it all. (Default)
* **Pepsi Cursive:** A cursive variant of the classic Pepsi font.
* **Zero Cool:** A bold, high-energy font (Default for RU clients).

Others fonts included are: Bangers, Big Noodle Titling, Expressway, Roboto Bold, Pf Tempesta Seven, Prototype, Die Die Die, LifeCraft, Gotham Narrow Ultra, Yikes, Ginko, Denmark.

---

## Installing Your Own Fonts
**NiceDamage** uses a library called `LibSharedMedia-3.0`. Think of this as a "media folder" that many WoW addons share. 

* If you have **Details!**, **WeakAuras**, or **ElvUI** installed, NiceDamage can "borrow" the fonts they provide.
* If you disable an addon that was providing a specific font, that font disappears from the library. NiceDamage will detect this and default back to the standard font to ensure your damage numbers remain visible.

### Option 1: Inside the addon
If you don't want to install extra addons, you can add one single TTF font to NiceDamage. Note that an .OTF font doesn't work, only a .TTF font will work.

1. Navigate to `wow/_retail_/Interface/AddOns/NiceDamage/fonts/`.
2. Choose a font you don't plan on using (e.g., `Bangers.ttf`).
3. Put the `.ttf` file inside the folder.
4. Rename the filename to `customfontndr.ttf` (exactly like that, case-sensitive).
5. Ingame, check the box "Load Custom Font" in the NiceDamage settings.
6. Relog to the character selection screen and log back in. In the NiceDamage settings, selecting "Custom Font NDR" will now display your custom font.
7. Updates to the addon will NOT overwrite your custom font.

### Option 2: Using the SharedMedia Addon
If you have a specific `.ttf` or `.otf` font file you want to use, or install multiple font files, the most stable way to add it is using the [SharedMedia](https://www.curseforge.com/wow/addons/sharedmedia) addon. 

1. Install the **SharedMedia** addon.
2. Follow the instructions provided in the `SharedMedia_MyMedia` folder within your AddOns directory to register your custom fonts.
3. Once registered, your custom font will automatically appear in the NiceDamage selection menu.

---

## Troubleshooting

* **Font hasn't changed:** You must log out to the character screen and log back in. The 3D engine cannot swap font files while you are inside the world.
* **I see the default font again:** This happens if you were using a font from another addon and that addon was deleted or disabled.
* **I have issues with ElvUI:** In World of Warcraft, the last addon to load applies its changes. ElvUI often overwrites NiceDamage. To resolve this:
    * **Option A:** Disable ElvUI's "CombatText Font" in the ElvUI settings.
    * **Option B:** Keep NiceDamage enabled (to load the font) and manually select "Pepsi Modern" within ElvUI's own combat text settings.
* **Question Marks (???) for numbers:** This occurs if the selected font doesn't support those characters (Most likely to happen on non-Latin clients like RU/CN/KR). Please select a universal font like *Roboto* or *Expressway*.

---

## Credits
This is a modern "Reloaded" version maintained by **Azaiko**. 
Original addon concept by the creators of the original NiceDamage.
Inspired by the legacy of the Pepsi combat text style used by the WoW community for over a decade.