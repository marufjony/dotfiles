#!/bin/bash

journal_template() {
    local date=$(date '+%d%m%Y')
    local default_path="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/Ideaverse/00 Inbox"
    local default_title="Journal Entry"
    local title="${1:-$default_title}"

    # Create file name with date prefix
    local file_name="${date}-${title// /_}"

    # Ensure the file has a .md extension
    [[ "$file_name" != *.md ]] && file_name="${file_name}.md"

    local full_path="${default_path}/${file_name}"

    cat << EOF > "$full_path"
# ${title}: $(date '+%d-%m-%Y')

## What's on my mind?

## Todo List:
- [ ]
- [ ]
- [ ]

## Notes:

EOF

    echo "Journal template created: $full_path"
    nvim "$full_path"
}

# Call the function with all passed arguments
journal_template "$@"
