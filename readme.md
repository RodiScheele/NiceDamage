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
* **Font Scaling:** Real-time adjustment of damage number sizes (from 0.5x to 2.5x).
* **SharedMedia Support:** Automatically detects fonts from other addons installed in your game.

---

## Configuration

Access the settings panel using:
* `Escape` > `Options` > `Addons` > `NiceDamage (Reloaded)`.

---

## Included Fonts

NiceDamage (Reloaded) comes bundled with the following popular combat fonts:
* **Pepsi Modern / Cursive:** The classic look that started it all.
* **Bangers:** A high-energy, comic-book style font.
* **Big Noodle Titling:** A tall, bold font (famous for its use in Overwatch).
* **Expressway:** A sharp, technical sans-serif font.
* **Roboto Bold:** A clean, modern, and highly legible font.
* **Die Die Die:** An aggressive, "scratched" font for high-impact crits.
* **LifeCraft:** Modeled after the original WoW logo aesthetic.

---

## Installing Your Own Fonts
**NiceDamage** uses a library called `LibSharedMedia-3.0`. Think of this as a "media folder" that many WoW addons share. 

* If you have **Details!**, **WeakAuras**, or **ElvUI** installed, NiceDamage can "borrow" the fonts they provide.
* If you disable an addon that was providing a specific font, that font disappears from the library. NiceDamage will detect this and default back to the standard font to ensure your damage numbers remain visible.

### Option 1: Using the SharedMedia Addon (Recommended)
If you have a specific `.ttf` or `.otf` font file you want to use, the most stable way to add it is using the [SharedMedia](https://www.curseforge.com/wow/addons/sharedmedia) addon. 

1. Install the **SharedMedia** addon.
2. Follow the instructions provided in the `SharedMedia_MyMedia` folder within your AddOns directory to register your custom fonts.
3. Once registered, your custom font will automatically appear in the NiceDamage selection menu. **This font will remain and will not be deleted when you update NiceDamage.**

### Option 2: Replacing a Built-in Font (The Quick Fix)
If you don't want to install extra addons, you can "swap" one of the default NiceDamage fonts for your own. **Note that updating the addon will overwrite your changes so you would have to do this every update.**

1. Navigate to `_retail_/Interface/AddOns/NiceDamage/fonts/`.
2. Choose a font you don't plan on using (e.g., `Bangers.ttf`).
3. Delete that file, then paste your custom font file into the folder.
4. **Rename your custom font** to exactly match the one you deleted (e.g., rename your new font to `Bangers.ttf`).
5. Restart the game. In the NiceDamage settings, selecting "Bangers" will now display your custom font.

---

## Troubleshooting

* **Font hasn't changed:** You must log out to the character screen and log back in. The 3D engine cannot swap font files while you are inside the world.
* **I see the default font again:** This happens if you were using a font from another addon and that addon was deleted or disabled.
* **I have issues with ElvUI:** In World of Warcraft, the last addon to load applies its changes. ElvUI often overwrites NiceDamage. To resolve this:
    * **Option A:** Disable ElvUI's "CombatText Font" in the ElvUI settings.
    * **Option B:** Keep NiceDamage enabled (to load the font) and manually select "Pepsi Modern" within ElvUI's own combat text settings.
* **Question Marks (???) for numbers:** This occurs on non-Latin clients (RU/CN/KR) if the selected font doesn't support those characters. Please select a universal font like *Roboto* or *Expressway*.

---

## Credits
This is a modern "Reloaded" version maintained by **Azaiko**. 
Original addon concept by the creators of the original NiceDamage.
Inspired by the legacy of the Pepsi combat text style used by the WoW community for over a decade.