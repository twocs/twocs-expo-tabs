#!/bin/bash

# Script to fix common markdown issues that can't be auto-fixed

echo "🔧 Fixing markdown issues..."

# Fix missing language specifications for code blocks
echo "  Fixing missing language specifications..."

# Fix empty code blocks (add 'text' as default language)
find . -name "*.md" -not -path "./node_modules/*" -exec sed -i '' 's/```$/```text/g' {} \;

# Fix the specific issues in the template files
echo "  Fixing specific template issues..."

# Fix the emphasis-as-heading issue in TEMPLATE_VALIDATION_SUMMARY.md
if [ -f "TEMPLATE_VALIDATION_SUMMARY.md" ]; then
    sed -i '' 's/🎉 \*\*Template creation is COMPLETE!\*\*/## 🎉 Template creation is COMPLETE!/g' TEMPLATE_VALIDATION_SUMMARY.md
fi

echo "✅ Markdown fixes applied!"
echo "Run 'npm run lint:md' to check remaining issues."