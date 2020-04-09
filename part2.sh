#!/bin/bash
while IFS=: read -r f1 f2 f3 f4 f5 f6 f7; do
 echo -n "$f1 $f3 "
 id -ng $f1
done < /../etc/passwd

