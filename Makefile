#!/bin/bash
all:
	find . -type f -name '*.svg' -print0 | xargs -0 -n 1 -P 6 inkscape  --actions="export-filename:$1.png; export-do;" --export-dpi 96 $1
