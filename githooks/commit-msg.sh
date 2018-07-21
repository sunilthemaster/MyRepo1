#!/bin/sh
#
# This hook verifies that the commit message contains a reference to a tfs item

RED=$(tput setaf 1)
NORMAL=$(tput sgr0)
# Regex to validate a string contains "#" followed by 4 or 5 digits anywhere in the commit message
regex="#[0-9]{4,5}($|[^0-9])"
file=`cat $1` # The file that contains the commit message

# If the commit message does not match the regex
if ! [[ $file =~ $regex ]]; then
  echo "${RED}ERROR - Missing tfs item in commmit message.$NORMAL"
  exit 1
fi

exit 0