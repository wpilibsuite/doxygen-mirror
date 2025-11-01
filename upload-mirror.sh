#!/bin/bash

OUTPATH=`echo $1 | sed 's|rel-\(.*\)\.\(.*\)\.\(.*\)|Release_\1_\2_\3|'`

jfrog rt u $OUTPATH/ generic-release-mirror/doxygen/
