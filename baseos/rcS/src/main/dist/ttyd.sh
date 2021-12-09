#!/bin/sh
# ********************
#
#
case "$1" in
  start)
    echo -n "starting ttyd ... "
    /usr/sbin/daemonize -p /var/run/ttyd.pid /usr/sbin/ttyd -p 8022 /usr/bin/busybox login &
    while [ ! -e /var/run/ttyd.pid ]; do
      echo -n '!'
      sleep 1
    done
    echo '!'
    ;;
  stop)
    echo "stopping ttyd ..."
    /usr/sbin/start-stop-daemon -p /var/run/ttyd.pid -s KILL -K /usr/sbin/ttyd
    ;;
  *) exit 1
    ;;
esac
#
exit 0;
#
    -p, --port              Port to listen (default: 7681, use `0` for random port)
    -i, --interface         Network interface to bind (eg: eth0), or UNIX domain socket path (eg: /var/run/ttyd.sock)
    -c, --credential        Credential for Basic Authentication (format: username:password)
    -u, --uid               User id to run with
    -g, --gid               Group id to run with
    -s, --signal            Signal to send to the command when exit it (default: 1, SIGHUP)
    -a, --url-arg           Allow client to send command line arguments in URL (eg: http://localhost:7681?arg=foo&arg=bar)
    -R, --readonly          Do not allow clients to write to the TTY
    -t, --client-option     Send option to client (format: key=value), repeat to add more options
    -T, --terminal-type     Terminal type to report, default: xterm-256color
    -O, --check-origin      Do not allow websocket connection from different origin
    -m, --max-clients       Maximum clients to support (default: 0, no limit)
    -o, --once              Accept only one client and exit on disconnection
    -B, --browser           Open terminal with the default system browser
    -I, --index             Custom index.html path
    -b, --base-path         Expected base path for requests coming from a reverse proxy (eg: /mounted/here)
    -P, --ping-interval     Websocket ping interval(sec) (default: 300)
    -6, --ipv6              Enable IPv6 support
    -S, --ssl               Enable SSL
    -C, --ssl-cert          SSL certificate file path
    -K, --ssl-key           SSL key file path
    -A, --ssl-ca            SSL CA file path for client certificate verification
    -d, --debug             Set log level (default: 7)
    -v, --version           Print the version and exit
    -h, --help              Print this text and exit
