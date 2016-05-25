### To Do

- check that afconvert exists

> command -v afconvert >/dev/null 2>&1 || { echo >&2 "I require foo, but it's not installed. Aborting." ; exit 1; }

OR

> ok=0;for path in ${PATH//:/ };do if [ -f "${PATH}${SCRIPT}" ];then ok=1; fi; done; if [ ${ok} -eq 0 ]; then echo "ERROR"; fi;

OR

> command -f

[Stack Overflow](http://stackoverflow.com/questions/592620/check-if-a-program-exists-from-a-bash-script/677212#677212)
