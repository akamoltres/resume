#!/bin/sh
echo -n $(git rev-parse --abbrev-ref HEAD) > branch.tmp
echo -n "$(git rev-parse HEAD)"  > rawcommit.tmp
if [ -n "$(git status --porcelain)" ] ; then
	echo -n "$(git rev-parse --short HEAD)+" > prettycommit.tmp;
fi
