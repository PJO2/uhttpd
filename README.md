# uhttpd
A tiny multi-threaded http server for MacOS, Linux and Windows, released under GPLv2 !

uhttpd is designed to be a portable, static HTTP server, with high security, high performance and very small footprint.
uhttpd is written in pure C using portable stream file and socket API. 

- Have you ever wanted to set up a web server in a few seconds without spending hours in the documentation or consuming to much resources ?
- Do you want to know how to write a server based on the socket programming APIs, writing IPv4/IPv6 agnostic applications  ? Or managing a pool of worker threads ?
- Do you want a Web server that you can easily customize ? 

uhttpd is made for you !

### Usage:

 uhttpd   [-4|-6] [-p port] [-d dir] [-i addr] [-c content-type|-ct|-cb]
          [-g msec] [-s max connections] [-verbose] [-x file]

      -4   use only IPv4 protocol
      -6   use only IPv6 protocol
      -c   define the content-type assigned to unknown files
           (the default is to reject unregistered types
           -ct is a shortcut for:    -c "text/plain"
           -cb is a shortcut for:    -c "application/octet-stream"
      -d   change base directory for HMTL content 
           (the default is to use the current directory)
      -g   slow down transfer by waiting for x msc between two frames
      -i   restrict uweb to listen only this IP address
      -p   change HTTP port (defaut is 8080), 
           using ports below 1024 need root privileges
      -s   chnage the maximum simultaneous connections (default is 1024)
      -v   verbose
      -x   set the default page for a directory (default is index.html)


### Set up for Linux and MacOS
get the source, compile, run :

    $ curl -O -L -s https://github.com/PJO2/uhttpd/raw/master/uhttpd.c
    $ cc -O -Wall -D UNIX -o uhttpd -l pthread uhttpd.c
    $ ./uhttpd -v -x hello.html


### set up for windows 
use the Pelles C compiler and add its directory into the PATH environment variable, then

    $ certutil.exe -urlcache -split -f https://github.com/PJO2/uhttpd/raw/master/uhttpd.c
    $ pomake Makefile.win32

### test it
from a local web browser open this URL : http://127.0.0.1:8080/



