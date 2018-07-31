# /bin/bash

PWD=`pwd`
NMOS_ROOT_HOME=$PWD
RDS_EXE=$NMOS_ROOT_HOME/nmosCpp/Linux.bin.X86/usr/bin/nmRds

#default host_address:127.0.0.1

$RDS_EXE \
	"{	\"pri\": 100, \
			\"logging_level\": -40, \
			\"allow_invalid_resources\": true, \
	    \"host_address\": \"192.168.166.1\",	\
  	  \"host_name\": \"localhost.localdomain\",	\
			\"settings_port\": 3209, \
			\"logging_port\": 5106, \
			\"query_port\": 8870, \
			\"query_ws_port\": 8871, \
			\"registration_port\": 8235, \
			\"node_port\": 8236, \
			\"admin_port\": 3208, \
			\"mdns_port\": 3214, \
			\"registration_expiry_interval\": 12, \
			\"access_log\": \"logreg.txt\"}" 
			
#			2>nul
