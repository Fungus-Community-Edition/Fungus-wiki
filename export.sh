#!/bin/bash
# used for converting md files to html
# requires amnual creating of folder structure
# use at own risk

# for each md file in the directory
for file in *.md

# for each md file in sub directories
#for file in **/*.md

  do
    name=$file
    echo "${name%%.*}"
    # convert each file to html and place it in the html directory
    # --gfm == use github flavoured markdown
    marked -o pages/${name%%.*} $file --gfm
done
