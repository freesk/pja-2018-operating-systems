#!/bin/bash

# define an array
foo=()
# find files with suffix ~ and place them into foo array
while IFS= read -r -d $'\0'; do
    foo+=("$REPLY")
done < <(find . -d 1 -name "*~" -type f -print0)

# check whether the folder exists
if [ ! -d "./BACKUP" ]; then
	mkdir "BACKUP"
fi

# loop over
for f in "${foo[@]}"
do
	cd "./BACKUP"
  # if the file is already there, report and move on
	if [ -e "$f" ]; then
    echo "file $(basename "$f") has been already backed up"
		cd "../"
		continue
	fi
	cd "../"
  # copy
	cp "$f" "./BACKUP"
done
