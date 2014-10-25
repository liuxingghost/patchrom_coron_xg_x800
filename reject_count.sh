#!/bin/bash
#author:liuxingghost
REJECT=`find out/reject -name '*.smali' | wc -l`
echo "reject count: ${REJECT}"
