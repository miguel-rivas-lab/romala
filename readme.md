# Romala

**Romala** is a **keyboard layout for Romance languages**. It extends the standard English keyboard with **dead keys and accents**, enabling efficient typing in a wide range of Romance languages while also providing a rich set of **math, logic, and special symbols**.

---

## Supported Languages

Romala provides full support for the following **Romance languages**:

* **Spanish (spa)**
* **Portuguese (por)**
* **French (fra)**
* **Italian (ita)**
* **Romanian (ron)**
* **Catalan / Valencian (cat)**
* **Galician (glg)**
* **Occitan (oci)**
* **Sardinian (srd)**
* **Ladin (lld)**
* **Romansh (roh)**
* **Asturian / Bable (ast)**
* **Aranese (arg)**
* **Corsican (cos)**
* **Walloon (wln)**
* **Mirandese (mwl)**
* **Aromanian / Macedo-Romanian (rup)**

These languages are fully supported with **dead keys for accented letters** and other **special characters**.

---

## Dead Keys Included

Romala includes the following **dead keys**, used to type accented and diacritic characters:

```
´ ¨ ^ ˇ ˘ ¯ ° ~ ¸ ˛
```

These allow typing characters such as:

```
á, à, â, ă, ä, é, è, ê, ë, í, ì, î, ï, ó, ò, ô, ö, ú, ù, û, ü, ñ, ș, ț, ç
```

…and many others across all supported Romance languages.

---

## Installation

Romala installs as a **.deb package** and will:

* Copy the `romala` symbols file to `/usr/share/X11/xkb/symbols/romala`
* Append the layout to X11 rules (`base.lst`, `evdev.lst`, `base.xml`, `evdev.xml`)
* Include snippet files for reference in `/usr/share/doc/romala-keyboard/`

### Install the package

```sh
sudo dpkg -i romala-keyboard_1.0_all.deb
```

### Remove the package

```sh
sudo dpkg -r romala-keyboard
```

This will safely remove the layout files and the entries added to your system.

---

## Build the Debian Package

From the `romala` folder:

```sh
dpkg-deb --build . .
```

This generates a `.deb` package ready for installation.

---

## Romala Keyboard Layout

The table below shows the available characters on each key.
**AltGr** refers to the right Alt key, and **Shift+AltGr** provides additional symbols used for math, logic, and language-specific characters. Dead keys modify the next key pressed to produce accented characters.

| Key | Default | Shift | AltGr           | Shift+AltGr |
| --- | ------- | ----- | --------------- | ----------- |
| `   | `       | ~     | dead_grave      | ≈           |
| 1   | 1       | !     | dead_acute      | ∀           |
| 2   | 2       | @     | dead_diaeresis  | ∑           |
| 3   | 3       | #     | dead_circumflex | √           |
| 4   | 4       | $     | dead_caron      | ∅           |
| 5   | 5       | %     | dead_breve      | ‰           |
| 6   | 6       | ^     | dead_macron     | ∞           |
| 7   | 7       | &     | dead_abovering  | ·           |
| 8   | 8       | *     | dead_tilde      | ⇔           |
| 9   | 9       | (     | dead_cedilla    | ≤           |
| 0   | 0       | )     | dead_ogonek     | ≥           |
| -   | -       | _     | ×               | ÷           |
| =   | =       | +     | ≠               | ≡           |
| Q   | q      | Q     | ∈ | ∉ |
| W   | w      | W     | ↑ | ⇑ |
| E   | e      | E     | € | ∃ |
| R   | r      | R     | ® | null |
| T   | t      | T     | ™ | null |
| Y   | y      | Y     | ¥ | ∇ |
| U   | u      | U     | ∪ | ∩ |
| I   | i      | I     | ⊂ | ⊃ |
| O   | o      | O     | ⊆ | ⊇ |
| P   | p      | P     | ¶ | ∏ |
| [   | [      | {     | ¡ | null |
| ]   | ]      | }     | ! | null |
| A   | a      | A     | ← | ⇐ |
| S   | s      | S     | ↓ | ⇓ |
| D   | d      | D     | → | ⇒ |
| F   | f      | F     | ƒ | ∫ |
| G   | g      | G     | ° | null |
| H   | h      | H     | ± | ∓ |
| J   | j      | J     | ∧ | ∨ |
| K   | k      | K     | § | null |
| L   | l      | L     | £ | λ |
| ;   | ;      | :     | ¿ | null |
| '   | '      | "     | ? | null |
| \   | \      | bar   | null  | null |
| Z   | z      | Z     | < | « |
| X   | x      | X     | > | » |
| C   | c      | C     | © | ¢ |
| V   | v      | V     | ∂ | null |
| B   | b      | B     | Ƀ | null |
| N   | n      | N     | dead_tilde | ¬ |
| M   | m      | M     | µ | null |
| ,   | ,      | <     | « | ≤ |
| .   | .      | >     | » | ≥ |
| /   | /      | ?     | \ | ¿ |

---

## Layout Information

* **Name:** `romala`
* **Short Description:** `rom`
* **Supported Languages:** See the detailed list above
* **Dead Keys:** `´ ¨ ^ ˇ ˘ ¯ ° ~ ¸ ˛`

---

## Notes

* The package is **safe**: it appends entries to existing X11 configuration files rather than replacing them.
* Snippets are included in `/usr/share/doc/romala-keyboard/` for reference.
* No additional dependencies are required; Perl is used internally by the package for safe XML edits and is included in most Linux distributions by default.

