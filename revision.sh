#!/bin/sh
printf $(git rev-parse --abbrev-ref HEAD) > branch.tmp
printf "$(git rev-parse HEAD)" > rawcommit.tmp
if [ -n "$(git status --porcelain)" ] ; then
	printf "$(git rev-parse --short HEAD)+" > prettycommit.tmp
else
	printf "$(git rev-parse --short HEAD)" > prettycommit.tmp
fi
