# Romala

Romala is a **keyboard layout for Romance languages**. It extends the standard English keyboard with **dead keys and accents**, enabling efficient typing in a wide range of Romance languages.

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

These languages are fully supported with dead keys for accented letters and special characters.

---

## Dead Keys Included

Romala includes the following **dead keys** to type accented characters:

```
´ ¨ ^ ˇ ˘ ¯ ° ~ ¸ ˛
```

Using these dead keys, you can type accented and diacritic characters such as:

```
á, à, â, ă, ä, é, è, ê, ë, í, ì, î, ï, ó, ò, ô, ö, ú, ù, û, ü, ñ, ș, ț, ç
```

…and many others, covering all the supported Romance languages.

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

This removes the layout files and the configuration entries added to the system.

---

## Build the Debian Package

From the `romala` folder:

```sh
dpkg-deb --build --root-owner-group romala
```

This generates a `.deb` package ready for installation.

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
