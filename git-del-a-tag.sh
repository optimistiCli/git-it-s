#!/bin/bash

USAGE='Usage: git-del-a-tag.sh <tag>'

TAG="$1"

if [ -z "$TAG" ] ; then
	echo "$USAGE"
	exit 1
fi


git tag -d "$TAG"

if [ $? -ne 0 ] ; then
	exit $?
fi

git push origin ':refs/tags/'"$TAG"
