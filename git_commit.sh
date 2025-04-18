#! /usr/bin/bash
git add .
commit_string=$(date +%F_%T)
git commit -m "Conmmit date: $commit_string"
git branch -M main
git remote add origin https://github.com/SerP1969/playbooks.git
git push -u origin main
