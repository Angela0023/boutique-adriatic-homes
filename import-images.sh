#!/bin/bash

# Image Import Script for Nicolas - Boutique Adriatic Homes
# This script copies images from Desktop/Niksa images into the project

SOURCE_DIR="$HOME/Desktop/Niksa images"
HERO_SOURCE_DIR="$HOME/Desktop/Niksa Landing page/Main images"
DEST_DIR="images/properties"
HERO_DEST_DIR="images/hero"

echo "🖼️  Importing images..."
echo ""

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "❌ Source directory not found: $SOURCE_DIR"
    echo "Please create the folder 'Niksa images' on your Desktop first"
    exit 1
fi

# Property folder mappings (source folder name -> destination folder name)
declare -A PROPERTY_MAP=(
    ["Casa della Cava"]="casa-della-cava"
    ["casa-della-cava"]="casa-della-cava"
    ["Villa Ivana Poljica"]="villa-ivana-poljica"
    ["villa-ivana-poljica"]="villa-ivana-poljica"
    ["House Natura"]="house-natura"
    ["house-natura"]="house-natura"
    ["City Villa"]="city-villa"
    ["city-villa"]="city-villa"
    ["Stone House Marina"]="stone-house-marina"
    ["stone-house-marina"]="stone-house-marina"
    ["Sunset Residences"]="sunset-residences"
    ["sunset-residences"]="sunset-residences"
    ["Orange Apartment"]="orange-apartment"
    ["orange-apartment"]="orange-apartment"
    ["Adriatic Blue"]="adriatic-blue"
    ["adriatic-blue"]="adriatic-blue"
)

# Copy images for each property
for source_name in "${!PROPERTY_MAP[@]}"; do
    dest_name="${PROPERTY_MAP[$source_name]}"
    source_path="$SOURCE_DIR/$source_name"
    dest_path="$DEST_DIR/$dest_name"

    if [ -d "$source_path" ]; then
        echo "📁 Copying images from: $source_name"

        # Clear existing images
        rm -f "$dest_path"/*

        # Copy all image files (jpg, jpeg, png, webp)
        count=0
        for img in "$source_path"/*.{jpg,JPG,jpeg,JPEG,png,PNG,webp,WEBP} 2>/dev/null; do
            if [ -f "$img" ]; then
                cp "$img" "$dest_path/"
                ((count++))
            fi
        done

        if [ $count -gt 0 ]; then
            echo "   ✅ Copied $count image(s) to $dest_name"
        else
            echo "   ⚠️  No images found in $source_name"
        fi
    fi
done

echo ""
echo "🏖️  Importing hero images..."

# Import hero images if directory exists
if [ -d "$HERO_SOURCE_DIR" ]; then
    # Clear existing hero images
    rm -f "$HERO_DEST_DIR"/*

    # Copy all image files from Main images folder
    count=0
    for img in "$HERO_SOURCE_DIR"/*.{jpg,JPG,jpeg,JPEG,png,PNG,webp,WEBP} 2>/dev/null; do
        if [ -f "$img" ]; then
            cp "$img" "$HERO_DEST_DIR/"
            ((count++))
        fi
    done

    if [ $count -gt 0 ]; then
        echo "   ✅ Copied $count hero image(s)"
    else
        echo "   ⚠️  No images found in Main images folder"
    fi
else
    echo "   ⚠️  Hero images folder not found: $HERO_SOURCE_DIR"
    echo "   Create 'Desktop/Niksa Landing page/Main images' to add hero images"
fi

echo ""
echo "✨ Import complete!"
echo ""
echo "Next steps:"
echo "1. Run: git add images/"
echo "2. Run: git commit -m 'Add property and hero images'"
echo "3. Run: git push"
