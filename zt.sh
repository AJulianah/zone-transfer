#/bin/bash

if [ -z $1 ]; then
  echo "[-] ./zt <argument>"
  exit 0
fi

for s in $(host -t ns $1) | cut -d " " -f4; do
  host -l $1 $s | grep "has address"
done
