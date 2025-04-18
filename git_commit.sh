#! /usr/bin/bash
git add .
commit_string=$(date +%F_%T)
git commit -m "All_files: $commit_strings"
git branch -M main
git remote add origin https://github.com/SerP1969/playbooks.git
git push -u origin main
