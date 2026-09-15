# ✅ Image Rotation System is Live!

Your site now supports automatic 4-second image rotation for each property.

## What You Need to Do Now

### Step 1: Create the Image Folders
On your **Desktop**, create TWO folders:

**For property images:**
```
Desktop/Niksa images/
```

**For hero images (the big image on the home page):**
```
Desktop/Niksa Landing page/Main images/
```

### Step 2: Organize Your Images
Inside `Niksa images`, create 8 folders (one for each property):

```
Desktop/Niksa images/
├── Casa della Cava/
├── Villa Ivana Poljica/
├── House Natura/
├── City Villa/
├── Stone House Marina/
├── Sunset Residences/
├── Orange Apartment/
└── Adriatic Blue/
```

### Step 3: Add Property Images
Put images in each **property folder** and name them **1.jpg, 2.jpg, 3.jpg**, etc.

Example for Casa della Cava:
```
Casa della Cava/
├── 1.jpg
├── 2.jpg
├── 3.jpg
└── 4.jpg
```

**Important:**
- ✅ Name them exactly: `1.jpg`, `2.jpg`, `3.jpg` (lowercase, with numbers)
- ✅ Use `.jpg`, `.png`, or `.webp` format
- ✅ Each property can have different numbers of images (1-20 supported)

### Step 3b: Add Hero Images
Put images in the **Main images** folder and name them **1.jpg, 2.jpg, 3.jpg**, etc.

Example:
```
Desktop/Niksa Landing page/Main images/
├── 1.jpg    ← Beautiful Trogir view
├── 2.jpg    ← Croatian coast
├── 3.jpg    ← Property exterior
└── 4.jpg    ← Sunset view
```

These images will rotate on the home page (the big image on the right side of "PRIVATE STAYS AROUND TROGIR").

### Step 4: Import Images
Open Terminal and run:
```bash
cd ~/boutique-adriatic-homes
./import-images.sh
```

This will copy all your images into the project.

### Step 5: Deploy
```bash
git add images/
git commit -m "Add property images"
git push
```

Wait ~1 minute, then refresh your site. Images will now rotate every 4 seconds!

---

## Example File Structure

```
Desktop/Niksa images/
├── Casa della Cava/
│   ├── 1.jpg          ← Exterior
│   ├── 2.jpg          ← Pool
│   ├── 3.jpg          ← Living room
│   └── 4.jpg          ← Bedroom
│
├── Villa Ivana Poljica/
│   ├── 1.png          ← Front view
│   ├── 2.png          ← Garden
│   └── 3.png          ← Interior
│
└── (repeat for all 8 properties)
```

---

## What Happens Next?

Once you add images and run `./import-images.sh`, the site will:

1. ✅ Automatically detect all images in each property folder
2. ✅ Display the first image immediately
3. ✅ Rotate through all images every 4 seconds
4. ✅ Show smooth fade transitions between images
5. ✅ Each property rotates independently

---

## Need More Details?

See **IMAGES-README.md** for:
- Image quality guidelines
- Troubleshooting tips
- How to use custom filenames
- How to change rotation speed

---

## Your Live Site

**https://angela0023.github.io/boutique-adriatic-homes/**

Right now it shows placeholder grey boxes. Once you add images and deploy, those will become beautiful rotating property photos! 🎉
