#!/bin/sh

USAGE='Usage: git-a-tag.sh <tag> <message>'

TAG="$1"
MESSAGE="$2"

if [ -z "$TAG" -o -z "$MESSAGE" ] ; then
	echo "$USAGE"
	exit 1
fi

git tag -a "$TAG" -m "$MESSAGE"
git push origin "$TAG"

