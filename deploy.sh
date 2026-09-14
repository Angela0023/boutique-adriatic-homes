#!/bin/bash

# Deployment script for Nicolas — Boutique Adriatic Homes
# Deploys to Cloudflare Pages via Wrangler CLI

echo "🚀 Deploying Nicolas — Boutique Adriatic Homes to Cloudflare Pages..."
echo ""

# Check if wrangler is installed
if ! command -v wrangler &> /dev/null
then
    echo "📦 Wrangler not found. Installing..."
    npm install -g wrangler
fi

# Deploy to Cloudflare Pages
echo "📤 Deploying to boutique-adriatic-homes.pages.dev..."
npx wrangler pages deploy . --project-name=boutique-adriatic-homes

echo ""
echo "✅ Deployment complete!"
echo "🌐 Your site is live at: https://boutique-adriatic-homes.pages.dev/"
