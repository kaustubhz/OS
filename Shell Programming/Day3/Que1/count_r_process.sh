#/bin/bash

echo -e "\nTotal running or ready processes are: `ps -eo pid,ppid,stat | grep -e "R" -c`";
