# Popscene Custom MP3 Picker Modernization & Mod

[![GitHub stars](https://img.shields.io/github/stars/jcgaming-official/mdickie-popscene.svg?style=social)](https://github.com/jcgaming-official/mdickie-popscene)
[![Latest Release](https://img.shields.io/github/v/release/jcgaming-official/mdickie-popscene)](https://github.com/jcgaming-official/mdickie-popscene/releases)


A modernized patch and feature enhancement for MDickie's **Popscene** (Android). This patch updates the legacy, deprecated native extension logic to comply with **Storage Access Framework (SAF)** and Scoped Storage requirements on **Android 12, 13, 14, 15, and 16+**.

---

## ⚡ Features
* **Custom MP3 Music Import**: Unlocked and fully modernized custom MP3 music picker.
* **Modern Android Compatibility**: Works seamlessly on Android 12, 13, 14, 15, and 16+.
* **Backstage Pass Unlocked**: Permanent access to the Backstage Pass editor features.
* **No Ads & Unlimited Money**: Built-in modifications for an ad-free experience and unlimited game currency.
* **Scoped Storage Compliant**: Uses Android's modern Storage Access Framework (`ACTION_OPEN_DOCUMENT`) instead of direct filesystem access, preventing crashes.
* **Persistable Permissions**: Retains access to your selected audio files even after device reboots or game restarts.
* **Null-Safe Audio Player**: Guarded `MediaPlayer` creation to prevent the game from resetting or crashing on unsupported codecs/files.

---

## 🎮 Gameplay Demo
Click the preview thumbnail below to watch the video on YouTube:

[![Popscene Gameplay Preview](https://img.youtube.com/vi/_fhL8_MYjJ8/maxresdefault.jpg)](https://youtu.be/_fhL8_MYjJ8)

---

## 📥 Downloads
Get the latest pre-compiled and signed APKs from the releases page:

👉 **[Download Latest Releases](https://github.com/jcgaming-official/mdickie-popscene/releases)**

---

## 🚀 How to Rebuild, Sign & Install

If you are modifying the smali code yourself, follow these steps to build and install:

### Step 1: Rebuild the APK
Use `apktool` to compile the modified directory back into an APK:
```powershell
apktool b <Decompiled-Folder> -o build/Popscene_fixed.apk -f
```

### Step 2: Sign the APK
Because the APK was modified, you must sign it before installing it on your device. You can sign it using `apksigner` (from the Android SDK) or via **APK Easy Tool**:

**Using apksigner:**
```powershell
apksigner sign --ks my-release-key.jks --out build/Popscene_signed.apk build/Popscene_fixed.apk
```

**Using a debug key (quick testing):**
```powershell
apksigner sign --key platform.pk8 --cert platform.x509.pem --out build/Popscene_signed.apk build/Popscene_fixed.apk
```

### Step 3: Install
Sideload the signed APK to your phone:
```powershell
adb install build/Popscene_signed.apk
```

---

## 📋 Compatibility Matrix
| Android OS Version | Custom MP3 Feature Status | Audio Import Mechanism |
| :--- | :---: | :--- |
| **Android 9 & below** | Yes | Legacy Media Store |
| **Android 10 - 12** | Yes | Storage Access Framework (SAF) |
| **Android 13 - 16+** | Yes | SAF + `READ_MEDIA_AUDIO` Permission |

---

## ⭐ Star the Repo!
If this patch helped you get custom music working in Popscene, please consider giving this repository a **star**! It helps others find this fix.
