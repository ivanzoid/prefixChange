#!/bin/bash

usage()
{

    echo '
This script will change prefix for your classes.

Usage:
	prefixChange <oldPrefix> <newPrefix> [directory]
'

    exit 0
}

main()
{
	set -eo pipefail

	if [ "$#" -lt 3 ]; then
		usage
		exit
	fi

	OLD_PREFIX="$1"
	NEW_PREFIX="$2"
	DIR="$3"

	echo "Renaming files..."
	find "$DIR" -regex ".*/${OLD_PREFIX}.*" -exec rename "s#(.*)/${OLD_PREFIX}(\\w+)\.([a-zA-Z]*)#\$1/${NEW_PREFIX}\$2.\$3#" {} \;
	echo "Changing file contents..."
	find -E "$DIR" -iregex '.*\.(h|m|mm|swift|pbxproj|storyboard)' -exec sed -i '' "s/\([^a-zA-Z]\)${OLD_PREFIX}\(\w*\)/\1${NEW_PREFIX}\2/g" {} \;
	echo "Done."
}

main "$@"
