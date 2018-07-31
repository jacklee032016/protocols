# /bin/bash
# script for one nmos node


PWD=`pwd`
NMOS_ROOT_HOME=$PWD
#NODE_EXE=$NMOS_ROOT_HOME/nmos/Linux.bin.X86/usr/bin/nmNode
NODE_EXE=./nmNode

$NODE_EXE \
	'{"logging_level": -40, 
	"registration_port": 8235, 
	"settings_port": 10000, 
	"logging_port": 11000, 
	"node_port": 12000, 
	"admin_port": 13000, 
	"connection_port": 14000 
	}'


#		"error_log": "$LOG_FILE.txt" 
