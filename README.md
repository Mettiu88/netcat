# Netcat
Netcat is the so called "TCP/IP swiss army knife", a simple network utility that can:
 - read/write data on a socket;
 - transfer files;
 - listen for incoming connections;
 - implement simple chats;
 - scan ports;
 - execute remote shells;
 - etc etc...

# Prerequisites
Tested on:
 - Windows 10 (20H2)
 - MinGW v9.0.0
 - gcc.exe (GCC) 4.8.3

# Compile
To compile the software on Windows, a simple *makewin.cmd* script is provided. Please adapt the paths according to your system.

# Usage examples
In this section, a short list of practical examples that you can use as reference.

## Chat
On the server:

    nc -l -p 2000 -v
where:

 - *-l* to activate LISTEN mode;
 - *-p 2000* to select the port;
 - *-v* for verbose mode.

On the client:

    nc SERVER_IP 2000

## File transfer
On the server:

    nc -l -p 2000 > filename.txt
where:

 - *-l* to activate LISTEN mode;
 - *-p* 2000 to select the port;
 - *filename.txt* is the name of the file where all the received bytes will be written.

On the client:

    nc SERVER_IP 2000 < filename.txt
where:

 - *filename.txt* is the name of the file that the client wants to transmit to the server.

## Scan mode
On the client:

    nc google.it 80 443 -z -v
where:

 - google.it is the hostname or IP to be scanned;
 - 80 443 the ports to be scanned;
 - *-z* specify ZERO bytes to be sent (only connection is tried);
 - *-v* verbose mode;

Example output:

    $ nc google.it 80 443 -z -v
    DNS fwd/rev mismatch: google.it != waw02s05-in-f35.1e100.net
    google.it [216.58.209.35] 80 (http) open
    google.it [216.58.209.35] 443 (https) open
