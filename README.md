Simple File Organizer

A Bash script designed to scan a specific directory and relocate .txt files into a dedicated folder named TextFiles.

Project Context
This is Project 2 in my practical DevOps learning path. After building a basic logic script (Project 1: Dice Roller), I moved on to file system operations, loops, and handling edge cases in Bash.

Technical Details
The script implements the following logic:
- Directory Management: Checks for the existence of the target directory and creates it if missing.
- Iteration & Conditions: Uses a for loop with an if [ -f ] check to ensure only regular files are processed.
- Path Handling: Wraps file variables in double quotes ("$file") to prevent word splitting issues on filenames with spaces.
- Feedback: Uses ANSI escape codes for color-coded terminal output and provides a final count of processed files.

Usage
chmod +x organizer.sh
./organizer.sh
