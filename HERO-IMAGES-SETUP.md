# Hero Images Setup Guide

The hero section (the large image area on the home page) now supports automatic 4-second image rotation!

## Quick Setup

### 1. Create the Folder Structure
On your **Desktop**, create:
```
Desktop/
└── Niksa Landing page/
    └── Main images/
```

### 2. Add Your Images
Put your best landscape/property photos in the **Main images** folder.

Name them: `1.jpg`, `2.jpg`, `3.jpg`, etc.

```
Desktop/Niksa Landing page/Main images/
├── 1.jpg    ← Beautiful Trogir waterfront
├── 2.jpg    ← Croatian coast sunset
├── 3.jpg    ← Property exterior
├── 4.jpg    ← Marina view
└── 5.jpg    ← Historic old town
```

### 3. Import the Images
```bash
cd ~/boutique-adriatic-homes
./import-images.sh
```

The script will automatically:
- ✅ Find your hero images
- ✅ Copy them to the project
- ✅ Report how many were imported

### 4. Deploy
```bash
git add images/
git commit -m "Add hero images"
git push
```

Wait ~1 minute, then refresh your site. The black spot will be replaced with your rotating images!

---

## Image Guidelines

### Recommended Specs
- **Aspect ratio:** Vertical or square (e.g., 1200×1600, 1080×1920, or 1200×1200)
- **Format:** JPG recommended (smaller file size)
- **File size:** Under 500KB per image
- **Quality:** High-resolution for desktop viewing

### What Makes a Good Hero Image?
✅ Beautiful landscape or property shots
✅ Good lighting (golden hour, blue hour)
✅ Strong composition
✅ Vertical format works best (fills the tall right-side space)

❌ Avoid cluttered or busy images
❌ Avoid images with important details on edges (may be cropped)

### Number of Images
- **Minimum:** 1 image (displays statically)
- **Recommended:** 3-5 images (good variety)
- **Maximum:** 20 images supported

---

## How It Works

- Images rotate every **4 seconds**
- **Smooth 0.8s fade** between images
- **Independent** from property images
- **Automatic detection** - just name them 1.jpg, 2.jpg, etc.

---

## Troubleshooting

### Images not showing?
1. Check folder path: `Desktop/Niksa Landing page/Main images/`
2. Check filenames: Must be `1.jpg`, `2.jpg`, etc. (lowercase)
3. Check format: `.jpg`, `.png`, or `.webp` only
4. Re-run: `./import-images.sh`
5. Deploy: `git push`
6. Clear cache: Hard refresh (Cmd+Shift+R)

### Want to change rotation speed?
Edit `index.html` and search for this line in the hero rotation code:
```javascript
}, 4000); // Rotate every 4 seconds
```
Change `4000` to your desired milliseconds.

---

## Complete Folder Structure

After setup, your Desktop should look like:

```
Desktop/
├── Niksa images/              ← Property images
│   ├── Casa della Cava/
│   ├── Villa Ivana Poljica/
│   └── (6 more property folders)
│
└── Niksa Landing page/        ← Hero images
    └── Main images/
        ├── 1.jpg
        ├── 2.jpg
        └── 3.jpg
```

Run `./import-images.sh` and it imports **both** hero and property images automatically!

---

## Live Site

**https://angela0023.github.io/boutique-adriatic-homes/**

The hero section is the large image on the right side of "PRIVATE STAYS AROUND TROGIR" on the home page.
