#!/bin/bash

# Create 'results' directory if it doesn't exist
mkdir -p results

# Loop through all .txt files in the current directory
for file in *.txt; do
    # Skip if no .txt files are found
    [ -e "$file" ] || continue

    # Define output file name
    output_file="results/TO${file}"

    # Run subzy command
    echo "Processing $file..."
    subzy run --targets "$file" --hide_fails > "$output_file"

    echo "Saved output to $output_file"
done

echo "✅ All files processed!"
