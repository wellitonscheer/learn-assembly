#! /usr/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <filename.s>"
  exit 1
fi

base_name=$(basename "$1" .s)

as "$1" -o "${base_name}.o"

ld "${base_name}.o" -o "$base_name"

chmod 777 "$base_name"

./"$base_name"

echo $?

rm "${base_name}.o" "$base_name"
