#!/bin/zsh


declare myID
myID="$(id -u)"

if [[ $myID -ne 0 ]]
then
  echo "SUDO required"
  exit
fi

if grep -q "pam_tid.so" /etc/pam.d/sudo; then
  echo "Touch ID already set";
else
  sed -i '' '1a\
  auth       sufficient     pam_tid.so\
  ' /etc/pam.d/sudo;
fi
