#!/bin/bash

# Retrieve the 7 most recent issues labeled with "article" and save the output to a file
curl -s "https://api.github.com/repos/6r17/6r17/issues?labels=article&state=open&sort=created&direction=desc&page=1&per_page=7" > issues.json

# Parse the JSON file to get the issue titles and URLs
titles=$(cat issues.json | jq -r '.[] | "- [\(.title)](\(.html_url))"')

# Combine BASE.md and the latest articles into README.md
rm README.md
cat BASE.md >> README.md
echo "$titles" >> README.md
rm issues.json
