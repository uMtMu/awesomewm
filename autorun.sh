#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

# run program [some arguments]
run emacs
run terminator
run firefox
run xautolock -time 2 -locker slock
