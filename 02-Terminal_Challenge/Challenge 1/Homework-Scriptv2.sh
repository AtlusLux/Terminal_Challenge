#!/bin/bash

# Line 5 mkdir to create the sub-folders within the WD

mkdir JPG PNG TIFF

# Lines 9/11/13 Will find the requested file types and copy them to their respected folders.

find . -type f -iname '*.jpg' -exec cp {} JPG \;
find . -type f -iname '*.png' -exec cp {} PNG \;
find . -type f -iname '*.tiff' -exec cp {} TIFF \;

# The lines below will create the file to hold count of the requested file types into a single file.


echo JPG: >> PictureCount.md
find JPG -type f \( -iname *.jpg* -o -iname *.png* -o -iname *.tiff* \)  | wc -w >> PictureCount.md
echo PNG: >> PictureCount.md
find PNG -type f \( -iname *.jpg* -o -iname *.png* -o -iname *.tiff* \)  | wc -w >> PictureCount.md
echo TIFF: >> PictureCount.md
find TIFF -type f \( -iname *.jpg* -o -iname *.png* -o -iname *.tiff* \)  | wc -w >> PictureCount.md






