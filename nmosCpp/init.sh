# /bin/bash

PWD=`pwd`

# echo $PWD

NMOS_ROOT_HOME=$PWD

echo $NMOS_ROOT_HOME

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$NMOS_ROOT_HOME/nmosCpp/Linux.bin.X86/lib:$NMOS_ROOT_HOME/cpprestsdk/Linux.bin.X86/lib

#export LD_LIBRARY_PATH
#export LD_LIBRARY_PATH

#source $LD_LIBRARY_PATH

echo $LD_LIBRARY_PATH


PATH=$PWD/nmosCpp/Linux.bin.X86/usr/bin:$PATH
export PATH

echo $PATH
