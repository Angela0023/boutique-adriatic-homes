# Adding Property Images

This guide explains how to add rotating images to each property on your Nicolas landing page.

## Quick Start

1. **Create the source folder on your Desktop:**
   ```
   Desktop/Niksa images/
   ```

2. **Create a folder for each property** (you can use either naming style):
   ```
   Desktop/Niksa images/
   ├── Casa della Cava/          (or casa-della-cava)
   ├── Villa Ivana Poljica/      (or villa-ivana-poljica)
   ├── House Natura/             (or house-natura)
   ├── City Villa/               (or city-villa)
   ├── Stone House Marina/       (or stone-house-marina)
   ├── Sunset Residences/        (or sunset-residences)
   ├── Orange Apartment/         (or orange-apartment)
   └── Adriatic Blue/            (or adriatic-blue)
   ```

3. **Add images to each folder:**
   - Name them: `1.jpg`, `2.jpg`, `3.jpg`, etc.
   - Or: `1.png`, `2.png`, `3.png`, etc.
   - Supported formats: `.jpg`, `.jpeg`, `.png`, `.webp`
   - Add as many as you want (the system checks up to 20 images per property)

4. **Run the import script:**
   ```bash
   cd ~/boutique-adriatic-homes
   ./import-images.sh
   ```

5. **Deploy to GitHub:**
   ```bash
   git add images/
   git commit -m "Add property images"
   git push
   ```

## Example Structure

```
Desktop/Niksa images/
├── Casa della Cava/
│   ├── 1.jpg          ← First image
│   ├── 2.jpg          ← Second image
│   ├── 3.jpg          ← Third image
│   └── 4.jpg          ← Fourth image
│
├── Villa Ivana Poljica/
│   ├── 1.png
│   ├── 2.png
│   └── 3.png
│
└── House Natura/
    ├── 1.jpg
    └── 2.jpg
```

## How Image Rotation Works

- **Automatic detection:** The site automatically finds and loads images numbered 1.jpg, 2.jpg, 3.jpg, etc.
- **4-second rotation:** Images change every 4 seconds
- **Smooth transitions:** 0.8s fade effect between images
- **Independent rotation:** Each property rotates its own images independently
- **Single image support:** If a property has only 1 image, it displays statically (no rotation)

## Image Guidelines

### File Naming
- ✅ **Correct:** `1.jpg`, `2.jpg`, `3.png`, `4.webp`
- ❌ **Incorrect:** `photo1.jpg`, `IMG_001.jpg`, `property-1.jpg`

### Image Quality
- **Aspect ratio:** 4:3 recommended (e.g., 1200x900px)
- **File size:** Keep under 500KB per image for fast loading
- **Format:** JPG for photos, PNG for graphics with transparency
- **Optimization:** Use tools like TinyPNG or ImageOptim before uploading

### Number of Images
- **Minimum:** 1 image per property (displays statically)
- **Recommended:** 3-5 images per property (good variety without too many)
- **Maximum:** Up to 20 images supported

## Advanced: Using Different Image Names

If you want to use custom filenames (not 1.jpg, 2.jpg), create an `images.json` manifest file:

### Example: `images/properties/casa-della-cava/images.json`
```json
{
  "images": [
    "front-view.jpg",
    "living-room.jpg",
    "bedroom.jpg",
    "pool.jpg",
    "sunset.jpg"
  ]
}
```

Then place those images in the same folder. The system will use the manifest if it exists, otherwise it looks for numbered files.

## Troubleshooting

### Images not showing up?
1. **Check file names:** Must be exactly `1.jpg`, `2.jpg`, etc. (case-sensitive)
2. **Check location:** Images must be in the correct property folder
3. **Check format:** Only `.jpg`, `.jpeg`, `.png`, `.webp` supported
4. **Check deployment:** Make sure you ran `git push` after importing
5. **Clear cache:** Hard refresh your browser (Cmd+Shift+R on Mac, Ctrl+Shift+R on Windows)

### Images rotating too fast/slow?
Edit `index.html` and change this line (search for `4000`):
```javascript
}, 4000); // Rotate every 4 seconds
```
Change `4000` to `5000` for 5 seconds, `3000` for 3 seconds, etc.

### Want to add more images later?
1. Add new images to your Desktop folder (e.g., `5.jpg`, `6.jpg`)
2. Run `./import-images.sh` again
3. `git add images/ && git commit -m "Add more images" && git push`

## Quick Reference

| Property | Folder Name |
|----------|-------------|
| Casa della Cava | `casa-della-cava` |
| Villa Ivana Poljica | `villa-ivana-poljica` |
| House Natura | `house-natura` |
| City Villa | `city-villa` |
| Stone House Marina | `stone-house-marina` |
| Sunset Residences | `sunset-residences` |
| Orange Apartment | `orange-apartment` |
| Adriatic Blue | `adriatic-blue` |

---

Need help? The image rotation system automatically handles:
- ✅ Loading images on page load
- ✅ Smooth transitions between images
- ✅ Independent rotation timers for each property
- ✅ Fallback to placeholder grey background if no images
- ✅ Static display for single-image properties
