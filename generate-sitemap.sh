#!/bin/bash

# Configuration
DOMAIN="https://faithculas.com"  # Change this to your actual domain
OUTPUT_FILE="sitemap.xml"
CURRENT_DATE=$(date +%Y-%m-%d)

# Start XML
cat > $OUTPUT_FILE << 'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
EOF

# Add static pages
echo "  <url>" >> $OUTPUT_FILE
echo "    <loc>$DOMAIN/index.html</loc>" >> $OUTPUT_FILE
echo "    <lastmod>$CURRENT_DATE</lastmod>" >> $OUTPUT_FILE
echo "    <changefreq>weekly</changefreq>" >> $OUTPUT_FILE
echo "    <priority>1.0</priority>" >> $OUTPUT_FILE
echo "  </url>" >> $OUTPUT_FILE

echo "  <url>" >> $OUTPUT_FILE
echo "    <loc>$DOMAIN/papers.html</loc>" >> $OUTPUT_FILE
echo "    <lastmod>$CURRENT_DATE</lastmod>" >> $OUTPUT_FILE
echo "    <changefreq>monthly</changefreq>" >> $OUTPUT_FILE
echo "    <priority>0.9</priority>" >> $OUTPUT_FILE
echo "  </url>" >> $OUTPUT_FILE

echo "  <url>" >> $OUTPUT_FILE
echo "    <loc>$DOMAIN/blog.html</loc>" >> $OUTPUT_FILE
echo "    <lastmod>$CURRENT_DATE</lastmod>" >> $OUTPUT_FILE
echo "    <changefreq>weekly</changefreq>" >> $OUTPUT_FILE
echo "    <priority>0.9</priority>" >> $OUTPUT_FILE
echo "  </url>" >> $OUTPUT_FILE

echo "  <url>" >> $OUTPUT_FILE
echo "    <loc>$DOMAIN/experience.html</loc>" >> $OUTPUT_FILE
echo "    <lastmod>$CURRENT_DATE</lastmod>" >> $OUTPUT_FILE
echo "    <changefreq>monthly</changefreq>" >> $OUTPUT_FILE
echo "    <priority>0.8</priority>" >> $OUTPUT_FILE
echo "  </url>" >> $OUTPUT_FILE

# Add publications
if [ -f "content/publications/papers-list.json" ]; then
    echo "Adding publications..."
    # Extract paper IDs from JSON
    PAPERS=$(grep -o '"[^"]*"' content/publications/papers-list.json | grep -v "papers" | tr -d '"')
    
    for paper in $PAPERS; do
        echo "  <url>" >> $OUTPUT_FILE
        echo "    <loc>$DOMAIN/publication-template.html?paper=$paper</loc>" >> $OUTPUT_FILE
        echo "    <lastmod>$CURRENT_DATE</lastmod>" >> $OUTPUT_FILE
        echo "    <changefreq>yearly</changefreq>" >> $OUTPUT_FILE
        echo "    <priority>0.7</priority>" >> $OUTPUT_FILE
        echo "  </url>" >> $OUTPUT_FILE
    done
fi

# Add blog posts
if [ -f "content/blog/blog-list.json" ]; then
    echo "Adding blog posts..."
    # Extract blog post IDs from JSON
    POSTS=$(grep -o '"[^"]*"' content/blog/blog-list.json | grep -v "posts" | tr -d '"')
    
    for post in $POSTS; do
        echo "  <url>" >> $OUTPUT_FILE
        echo "    <loc>$DOMAIN/blog-post.html?post=$post</loc>" >> $OUTPUT_FILE
        echo "    <lastmod>$CURRENT_DATE</lastmod>" >> $OUTPUT_FILE
        echo "    <changefreq>monthly</changefreq>" >> $OUTPUT_FILE
        echo "    <priority>0.6</priority>" >> $OUTPUT_FILE
        echo "  </url>" >> $OUTPUT_FILE
    done
fi

# Close XML
echo "</urlset>" >> $OUTPUT_FILE

echo "Sitemap generated successfully: $OUTPUT_FILE"
echo "Total URLs: $(grep -c "<url>" $OUTPUT_FILE)"
