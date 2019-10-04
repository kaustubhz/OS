#/bin/bash

echo -e "\nTotal processes running in foreground are: `ps -eo pid,ppid,stat | grep -e "+" -c`";
