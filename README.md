# Nicolas — Boutique Adriatic Homes

Minimalistic landing page for a boutique property booking engine showcasing 8 private stays around Trogir, Croatia.

## Features

- **Modern, minimalistic design** — Black/white/grey palette with generous whitespace
- **Highly prominent booking CTA** — Multiple touchpoints leading to the booking engine
- **Fully responsive** — Optimized for desktop, tablet, and mobile
- **Fast loading** — Single HTML file with embedded CSS and minimal JavaScript
- **Filter functionality** — Properties filterable by location
- **Smooth scrolling** — Enhanced UX with smooth anchor navigation

## Deployment to Cloudflare Pages

### Option 1: Via Cloudflare Dashboard (Quickest)

1. Go to [Cloudflare Pages](https://dash.cloudflare.com/)
2. Select your account
3. Navigate to **Workers & Pages** → **Pages**
4. Find your project: `boutique-adriatic-homes`
5. Click **Create a deployment**
6. Upload the `index.html` file directly
7. Click **Save and Deploy**

Your site will be live at: `https://boutique-adriatic-homes.pages.dev/`

### Option 2: Via Git (Recommended for ongoing updates)

1. Initialize a git repository in this folder:
   ```bash
   cd /Users/angelapetkovska/boutique-adriatic-homes
   git init
   git add .
   git commit -m "Initial commit: Nicolas landing page"
   ```

2. Push to GitHub:
   ```bash
   gh repo create boutique-adriatic-homes --private --source=. --push
   ```

3. Connect to Cloudflare Pages:
   - Go to Cloudflare Pages → **Create a project**
   - Select **Connect to Git**
   - Choose the `boutique-adriatic-homes` repository
   - Build settings:
     - Framework preset: **None**
     - Build command: (leave empty)
     - Build output directory: `/`
   - Click **Save and Deploy**

4. Future updates are automatic — just push to GitHub:
   ```bash
   git add .
   git commit -m "Update content"
   git push
   ```

### Option 3: Via Wrangler CLI

```bash
cd /Users/angelapetkovska/boutique-adriatic-homes
npx wrangler pages deploy . --project-name=boutique-adriatic-homes
```

## Customization Guide

### Update Property Information

Edit the `.property-card` sections in `index.html` (search for "Villa Trogir Waterfront" to find the first one).

Each property has:
- **Number** — `01` through `08`
- **Name** — e.g., "Villa Trogir Waterfront"
- **Location** — e.g., "Trogir Old Town"
- **Filter category** — `data-location="trogir"` (used for filtering)

### Add Real Property Images

Replace the placeholder backgrounds in `.property-image` divs:

```html
<div class="property-image" style="background: url('images/property-01.jpg') center/cover;">
    <span class="property-number mono">01</span>
</div>
```

Upload images to an `images/` folder and reference them in the style attribute.

### Update Hero Image

Replace the placeholder in `.hero-right`:

```css
.hero-right {
    background: url('images/hero-trogir.jpg') center/cover;
}
```

### Change Booking Link

The booking engine URL is in the **Booking Section** (`#booking`). Update the `href` if needed:

```html
<a href="YOUR_NEW_BOOKING_URL" target="_blank">Book Now</a>
```

### Modify Colors

Update CSS variables in `:root`:

```css
:root {
    --black: #000000;
    --white: #FFFFFF;
    --grey-light: #F5F5F5;
    --grey-mid: #A0A0A0;
    --grey-dark: #333333;
}
```

## Key Design Decisions

1. **Booking CTA prominence** — Placed in a dedicated black section with high contrast and large button size (client specifically noted this was a problem on other sites)

2. **Multiple CTAs** — Hero section, nav bar, booking section, and final CTA all point to booking

3. **Performance-first** — Single HTML file, system fonts, no external dependencies

4. **Editorial aesthetic** — Generous whitespace, minimal color palette, typography-focused design

5. **Mobile-optimized** — Responsive grid, readable text sizes, touch-friendly buttons

## Browser Support

- Chrome/Edge (latest)
- Firefox (latest)
- Safari (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## File Structure

```
boutique-adriatic-homes/
├── index.html          # Main landing page (self-contained)
└── README.md          # This file
```

## Next Steps

1. **Add real property images** — Replace placeholder backgrounds
2. **Update property names/details** — Match actual property information
3. **Test booking link** — Verify it opens the correct booking engine
4. **Add Google Analytics** (optional) — Track visitor behavior
5. **Add favicon** (optional) — Brand the browser tab

## Support

For issues or questions about the Cloudflare Pages deployment:
- [Cloudflare Pages Docs](https://developers.cloudflare.com/pages/)
- [Cloudflare Community](https://community.cloudflare.com/)
