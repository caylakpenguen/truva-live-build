#!/bin/sh

HEDEF=/home/Moduller
mkdir $HEDEF

for dir in `ls -1`; do
    if [ -d $dir ]; then
      echo "$dir.sb ..."
      echo -ne > exclude.txt
      for i in $EXCLUDE; do
         part=$(echo "x/$i" | tr -s / | sed -r "s:x/[^/]+/::")
         if [ -e "$ROOT/$dir/$part" ]; then echo "$ROOT/$dir/$part" >> exclude.txt; fi
      done
      cat exclude.txt
      dir2sb $dir $HEDEF/$dir.sb -keep-as-directory -ef exclude.txt
      if [ $? -ne 0 ]; then exit; fi
      rm exclude.txt
      echo
    fi
done

