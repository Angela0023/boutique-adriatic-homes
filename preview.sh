#!/bin/bash

# Local preview script for Nicolas — Boutique Adriatic Homes
# Opens the landing page in your default browser

echo "🔍 Opening local preview..."
echo ""

# Check OS and open accordingly
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    open index.html
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    xdg-open index.html
elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    # Windows
    start index.html
fi

echo "✅ Preview opened in your default browser"
echo ""
echo "💡 For a live preview with hot reload, use:"
echo "   npx wrangler pages dev ."
