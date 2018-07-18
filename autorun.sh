#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

# run program [some arguments]
run emacs --daemon
run emacsclient -c -a emacs
run terminator
run firefox
run xautolock -time 2 -locker slock
