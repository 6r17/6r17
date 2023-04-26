#!/bin/bash

# Get the 7 most recent issues labeled with "article"
issues=$(curl -s "https://api.github.com/repos/6r17/6r17/issues?labels=article&state=open&sort=created&direction=desc&page=1&per_page=7")

# Parse the JSON response to get the issue titles and URLs
titles=$(echo "$issues" | jq -r '.[] | "- [\(.title)](\(.html_url))"')

# Combine BASE.md and the latest articles into README.md
rm -rf README.md
cat BASE.md > README.md
echo "# latest articles" >> README.md
echo "$titles" >> README.md

