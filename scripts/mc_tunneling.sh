#!/bin/bash
ROLE="$1"
TARGET1="$(getent ahostsv4 ${2} | grep STREAM | head -n 1 | cut -d ' ' -f 1)"
#TARGET2="${3:-127.0.0.1}"
#POD_RANGE="${DELAY:-10.24.0.0/16}"
RETRY=${RETRY:-20}
export PARENTPID="$$"
export PATH="${NONSU_HOME}:${PATH}"

if [[ "$ROLE" == "SERVER" ]]; then
	udptunnel -c ${TARGET1}/34444 239.194.1.51/51551/1 -t ${RETRY} -v &
	udptunnel -c ${TARGET1}/34445 239.194.1.52/51552/1 -t ${RETRY} -v &
	udptunnel -c ${TARGET1}/34446 239.194.1.53/51553/1 -t ${RETRY} -v &
	udptunnel -c ${TARGET1}/34447 239.194.1.54/51554/1 -t ${RETRY} -v &
	udptunnel -c ${TARGET1}/34448 239.194.1.55/51555/1 -t ${RETRY} -v &
	udptunnel -c ${TARGET1}/34449 239.194.1.56/51556/1 -t ${RETRY} -v &
	udptunnel -c ${TARGET1}/34450 239.194.1.57/51557/1 -t ${RETRY} -v &
	udptunnel -c ${TARGET1}/34451 239.194.1.58/51558/1 -t ${RETRY} -v &
	udptunnel -c ${TARGET1}/34452 239.194.1.59/51559/1 -t ${RETRY} -v &
	udptunnel -c ${TARGET1}/34453 239.194.1.60/51560/1 -t ${RETRY} -v &
	udptunnel -c ${TARGET1}/34454 239.194.1.61/51561/1 -t ${RETRY} -v &
	udptunnel -c ${TARGET1}/34455 239.194.1.62/51562/1 -t ${RETRY} -v &
	udptunnel -c ${TARGET1}/34456 239.194.1.63/51563/1 -t ${RETRY} -v &
	udptunnel -c ${TARGET1}/34457 239.194.1.64/51564/1 -t ${RETRY} -v &
	udptunnel -c ${TARGET1}/34458 239.194.1.65/51565/1 -t ${RETRY} -v &
	udptunnel -c ${TARGET1}/34459 239.194.1.66/51566/1 -t ${RETRY} -v &
	udptunnel -c ${TARGET1}/34460 239.194.1.67/51567/1 -t ${RETRY} -v &
	udptunnel -c ${TARGET1}/34461 239.194.1.68/51568/1 -t ${RETRY} -v &
	udptunnel -c ${TARGET1}/34483 239.194.1.90/51590/1 -t ${RETRY} -v &
else
	udptunnel -s 34444 239.194.1.51/51551/1 -v &
	udptunnel -s 34445 239.194.1.52/51552/1 -v &
	udptunnel -s 34446 239.194.1.53/51553/1 -v &
	udptunnel -s 34447 239.194.1.54/51554/1 -v &
	udptunnel -s 34448 239.194.1.55/51555/1 -v &
	udptunnel -s 34449 239.194.1.56/51556/1 -v &
	udptunnel -s 34450 239.194.1.57/51557/1 -v &
	udptunnel -s 34451 239.194.1.58/51558/1 -v &
	udptunnel -s 34452 239.194.1.59/51559/1 -v &
	udptunnel -s 34453 239.194.1.60/51560/1 -v &
	udptunnel -s 34454 239.194.1.61/51561/1 -v &
	udptunnel -s 34455 239.194.1.62/51562/1 -v &
	udptunnel -s 34456 239.194.1.63/51563/1 -v &
	udptunnel -s 34457 239.194.1.64/51564/1 -v &
	udptunnel -s 34458 239.194.1.65/51565/1 -v &
	udptunnel -s 34459 239.194.1.66/51566/1 -v &
	udptunnel -s 34460 239.194.1.67/51567/1 -v &
	udptunnel -s 34461 239.194.1.68/51568/1 -v &
	udptunnel -s 34483 239.194.1.90/51590/1 -v &
fi

wait
