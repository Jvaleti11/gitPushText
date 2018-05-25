#!/bin/sh

  read -p "input commit message " msg
  if ((${#msg}!= 0))
  then
    git add . && git commit -m "hello" && gco - && git pull && gco - && git merge master && git push
    echo "merged and pushed"
  else
  echo "not merged and pushed"
  fi
echo "test-2"
