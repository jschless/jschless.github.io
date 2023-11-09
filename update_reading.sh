#!/bin/bash

python ~/Programming/ReadingVisualizer/main.py
git add _includes/plotly/reading_over_time.html
git add books.md

git commit -m "read a new book"
git push
