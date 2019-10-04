#/bin/bash

echo -e "\nTotal processes whose parent is init are: `ps -eo ppid,stat | grep -e "^ *1 " -c`";
