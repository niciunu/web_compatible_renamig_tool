# This should be a simple script to rename the files found in the /data directory.
# Also, this will replace some non ASCII characters during the process. (If "language" is set to 1)
# It will replace the "white space" with "-".
# Inspired from here: 
# https://askubuntu.com/questions/613179/bash-script-to-rename-files-in-a-directory (viewed on August 2025)
# https://tldp.org/LDP/abs/html/string-manipulation.html (viewed on August 2025)
# https://stackoverflow.com/questions/25996806/multiple-substitutions-on-a-string-in-bash (viewed on August 2025)

# How to use:
# Save the file in a folder
# Make the file executable using this command: chmod +x web_rename
# Create a directory called data
# Put the files that you need to rename in that directory
# Execute the script using the command ./web_rename

# MIT License
# Copyright (c) [2025] [Alexandru Trofim]




#!/bin/bash
language=1
echo "Replacing white space and some non ASCII characters from data/"
cd data/
for f in *; do 
    if [ $language -eq 1 ]
        then
            new=${f//Ă/A}
            new=${new//Â/A}
            new=${new//Î/I}
            new=${new//Ș/S}
            new=${new//Ț/T}
            new=${new//ă/a}
            new=${new//â/a}
            new=${new//î/i}
            new=${new//ș/s}
            new=${new//ț/t}
            mv  "$f" "${new// /-}"
        else
            mv  "$f" "${f// /-}"
    fi
done
