
How to use:
	Build:
			enter 'cpprestsdk'; make;
					libcpprest.so;
			enter 'nmos'; make:
					cpptest	: libCppRestNmod.so;
					mdns 		: libMDns.so;
					nmos 		: libNmos.so;
					rql			: libRql;
					
					nmos-cpp-node			: nmNode;
					nmod-cpp-registry	: nmRDS;
					
					
	Run:		
			source	init.sh
			rds.sh			: start RDS first before node;
			oneNode.sh	: run one node;
			
			
	Note:
			Environment is initialized by init.sh; but this script must be run with 'source' to make environment active in current terminal;
			save.sh: save all source code in one package;
			libcpprest maybe be installed by Federo default, which can't be used by libNmos.so;
			

Mar.2nd: rebuild to remove some uncompatible within versions;
	nmos hasd problem with CppRestSDK 2.9.1: no web::http::http_version
	Newly version cppRestSDK 2.10.2: web:http::http_version cpprest/http_msg.h
		Build CppRest in Linux:
				cd Release;mkdir build; cmake .. DCMAKE_BUILD_TYPE=Debug;
				make VERBOSE=1 > mk.log
				
				only Linux filesystem for symbolic library


Mar.1st, 
Preparations:
	1. cmake
				dnf install cmake

	2. boost
				dnf search boost

				dnf install boost

				dnf install boost-devel

	3. C++ REST SDK
				dnf search cpprest
				
				dnf install cpprest-devel: version 2.9.1
							NO 

	4. WebSocket++ (only header )
				dnf search websocketpp
				dnf install websocketpp-devel

	5 .Bonjour SDK
				dnf search bonjour
							root-net-bonjour.i686 : Bonjour extension for ROOT
							avahi-compat-libdns_sd.i686 : Libraries for Apple Bonjour mDNSResponder compatibility
							avahi-compat-libdns_sd-devel.i686 : Header files for the Apple Bonjour mDNSResponder compatibility libraries

				dnf install avahi-compat-libdns_sd-devel

	6. catch (for unittest)
				dnf search catch
				dnf install catch-devel

	7. dnssd
			dnf search dnssd

	8. dnf install gcc-c++
				libstdc++-6.4.1-1.fc25.i686.rpm
				libstdc++-devel-6.4.1-1.fc25.i686.rpm
				gcc-c++-6.4.1-1.fc25.i686.rpm

query installation details of one package
rpm -ql PACKAGE_NAME


rpm -qpl XXX.rpm: list file contents


g++ -std=c++11 my_file.cpp -o my_file -lboost_system -lcrypto -lssl -lcpprest ./my_file

