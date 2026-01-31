#!/bin/sh
branch=$(git rev-parse --abbrev-ref HEAD)
rawcommit="$(git rev-parse HEAD)"
if [ -n "$(git status --porcelain)" ] ; then
	prettycommit="$(git rev-parse --short HEAD)+"
else
	prettycommit="$(git rev-parse --short HEAD)"
fi

printf '%s%s%s%s%s%s%s' '\fancyfoot[L]{Generated from \href{https://github.com/akamoltres/resume/commit/' $rawcommit '}{\textcolor{blue}{akamoltres/resume ' $branch '@' $prettycommit '}}.}' > revision.tex.tmp
