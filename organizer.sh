#!/bin/bash
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${BLUE}--- File Organizer Started ---${NC}"

if [ ! -d "TextFiles" ]; then
    echo "Creating destination folder: TextFiles"
    mkdir "TextFiles"
fi

echo "Searching for .txt files..."
COUNT=0

for file in *.txt; do
    if [ -f "$file" ]; then
        cp "$file" "TextFiles/"
        echo "Copied: $file"
        COUNT=$((COUNT + 1))
    fi
done

if [ $COUNT -eq 0 ]; then
    echo -e "${RED}No .txt files found to organize.${NC}"
else
    echo -e "${GREEN}Success! $COUNT file(s) organized into 'TextFiles' folder.${NC}"
fi
