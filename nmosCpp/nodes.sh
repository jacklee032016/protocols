# /bin/bash
# script for nmos nodes


COUNT=20


PWD=`pwd`
NMOS_ROOT_HOME=$PWD
NODE_EXE=$NMOS_ROOT_HOME/nmos/Linux.bin.X86/usr/bin/nmNode


REGISTER_PORT=8235

PORT_SETTING=10000
PORT_LOGGING=11000
PORT_NODE=12000
PORT_ADMIN=13000
PORT_CONNECT=14000


i=0

while [ $i -lt $COUNT ]
do
	sleep 2
	n=$((i%6))
	echo "No. $i testing..."

	let PORT_SETTING+=1
	let PORT_LOGGING+=1
	let PORT_NODE+=1
	let PORT_ADMIN+=1
	let PORT_CONNECT+=1

	LOG_FILE=Logging0$i

	echo "\tSetting:$PORT_SETTING;Logging:$PORT_LOGGING;Node:$PORT_NODE;Admin:$PORT_ADMIN;Connect:$PORT_CONNECT;"

	CMD='{"logging_level": -40, 
    "registration_port": 8235, 
		"settings_port": 10000, 
		"logging_port": 10002, 
		"node_port": 10003, 
		"admin_port": 10004, 
		"connection_port": 10005
		}'
	echo $CMD	

#	$NODE_EXE '$CMD'

	$NODE_EXE \
	"{\"logging_level\": -40, 
    \"registration_port\": 8235, 
		\"settings_port\": $PORT_SETTING, 
		\"logging_port\": $PORT_LOGGING, 
		\"node_port\": $PORT_NODE, 
		\"admin_port\": $PORT_ADMIN, 
		\"connection_port\": $PORT_CONNECT
		}"
	
	let i+=1
	
done


