#!/bin/sh
./configure    # try to figure out all implementation differences

cd lib         # build the basic library that all programs need
make           # use "gmake" everywhere on BSD/OS systems

cd ../libfree  # continue building the basic library
make

cd ../libroute # only if your system supports 4.4BSD style routing sockets
make           # only if your system supports 4.4BSD style routing sockets

cd ../libxti   # only if your system supports XTI
make           # only if your system supports XTI

cd ../intro    # build and test a basic client program
make daytimetcpcli
./daytimetcpcli 127.0.0.1
