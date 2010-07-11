#!/bin/sh

cd dot_files
for name in *; do
  target="$HOME/.$name"
  if [ -e $target ]; then
    if [ ! -L $target ]; then
      echo "WARNING: $target exists but is not a symlink."
    fi
  else
    echo "Creating $target"
    ln -s "$PWD/$name" "$target"
  fi
done
