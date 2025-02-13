#!/bin/bash

input="The five boxing wizards jump quickly"

# Question 1: Match "bo", followed by any string of any length, including the empty string, followed by "ng".
echo "Question1"
echo "$input" | grep -o 'bo.*ng'

# Question 2: Match a word, at least four letters long, that doesn’t contain "u".
echo "Question2"
echo "$input" | grep -o '\b[^\suU]{4,}\b'

# Question 3: Match three consecutive words, where the middle word begins with "b".
echo "Question3"
echo "$input" | grep -o '\b\w+ b\w* \w+\b'

# Question 4: Identify all function declarations (including parameters).
echo "Question4"
grep -E '^\s*[a-zA-Z_][a-zA-Z0-9_]*\s+\**[a-zA-Z_][a-zA-Z0-9_]*\s*\([^)]*\)\s*\{' code.c

# Question 5: Extract lines where a C structure is defined using awk.
echo "Question5"
awk '/^\s*struct\s+[a-zA-Z_][a-zA-Z0-9_]*/' code.c

# Question 6: Replace "marks" with "score" in the code.c file using sed.
echo "Question6"
sed 's/\bmarks\b/score/g' code.c

# Question 7: Find lines where a function is defined with at least two arguments.
echo "Question7"
grep -E '^\s*[a-zA-Z_][a-zA-Z0-9_]*\s+\**[a-zA-Z_][a-zA-Z0-9_]*\s*\([^,]+,[^)]*\)\s*\{' code.c

# Question 8: Identify lines with preprocessor directives using grep.
echo "Question8"
grep -E '^\s*#\s*(include|define|ifdef|ifndef|endif)' code.c

# Question 9: Count the total number of lines that contain function declarations or definitions.
echo "Question9"
grep -cE '^\s*[a-zA-Z_][a-zA-Z0-9_]*\s+\**[a-zA-Z_][a-zA-Z0-9_]*\s*\([^)]*\)\s*\{' code.c

# Question 10: Extract and list all unique function names using grep and cut.
echo "Question10"
grep -Eo '^\s*[a-zA-Z_][a-zA-Z0-9_]*\s+\**[a-zA-Z_][a-zA-Z0-9_]*' code.c | awk '{print $2}' | sort -u
