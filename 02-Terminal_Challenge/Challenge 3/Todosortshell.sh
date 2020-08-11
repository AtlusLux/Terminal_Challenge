# !/bin/bash
# To do list Shell Script

# Create the all file.

find Todos/Carrie/ -type f -exec cat {} \; > Todos/Carrie/all.txt
find Todos/Jennifer/ -type f -exec cat {} \; > Todos/Jennifer/all.txt
find Todos/John/ -type f -exec cat {} \; > Todos/John/all.txt

# Create all Files requested with the "Done" tasks.

find Todos/Carrie/ -type f -exec grep -r -R "DONE" {} \; > Todos/Carrie/done.txt
find Todos/Jennifer/ -type f -exec grep -r -R "DONE" {} \; > Todos/Jennifer/done.txt
find Todos/John/ -type f -exec grep -r -R "DONE" {} \; > Todos/John/done.txt

# Creating all the Unfinished jobs .txt




