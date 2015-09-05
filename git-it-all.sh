#!/bin/sh

BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [ $? -gt 0 ] ; then
	exit 1
fi

git add -u
git commit -m "$1"
git push origin "$BRANCH"

