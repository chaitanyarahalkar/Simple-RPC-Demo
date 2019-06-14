#!/bin/sh

#Generate client stub, server skeleton, client program,server program, header file, XDR routines and a Makefile
rpcgen -a -C IDL.x

echo "[+] Compiling program"

make -f Makefile.IDL

mv IDL_client client

mv IDL_server server 

echo "[+] Generated RPC Client and Server binaries"

echo "Syntax for RPC Client - ./client <remote-ip-address> "
