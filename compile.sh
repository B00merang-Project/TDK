#!/bin/bash

# Read themes.index file; see if theme is supported

# create sub-folder in output

# copy all scss from template gtk-3.0/3.20 (unless flagged otherwise)

# locate file resources in themes/DIR & copy over to output/DIR

# create gtk.scss file (import colors, all other files, then gtk_colors.scss)

# run scss parser > output to gtk.css

# remove all scss files

# 

# EXTENSIONS (This has to be at the end of the script!)
# Requirements: Has to be contained into a folder whose name starts with 'ext.' and has to have a 'run.sh' file to conduct the operations

# for each (DIR starting with 'ext.')
# 	cd DIR
#	./run.sh
# end