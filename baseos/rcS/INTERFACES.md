## /etc/network/interfaces

busybox simple static config

```
# read other file in place 
source /path/to/file

# read other files in dir
# excludes files starting with '.' 
source-dir(ectory) /path/to/dir

# enable iface by -a
auto <ifname>

# iface stanza
iface <ifname> <af=inet> <method=manual|static|dhcp|loopback>
iface <ifname> <af=inet6> <method=v4tunnel|static|manual|loopback>
iface <ifname> <af=link> <method=none>

# static options
    address <...> 
    netmask <...>
    bnmask <...>
    broadcast <...> # (optional)
    hwaddress <...> # (optional)
    pointopoint <...> # (optional)
    label <...> # (optional)
    mtu <...> # (optional)
    gateway <...> # (optional)
    metric <...> # (optional)

# dhcp options
    hwaddress <...> # (optional)
    hostname <...> # (optional)
    client <...> # (optional)
    script <...> # (optional)
    udhcpc_opts <...> # (optional)

# v4tunnel options
    endpoint <...>
    local <...> # (optional)
    ttl <...> # (optional)
    address <...>
    netmask <...>
    gateway <...> # (optional)

# generic options
    post-up [cmdline] # (optional)
    pre-down [cmdline] # (optional)
    <option-name> <option-value> # (optional)
```

## /etc/network/if-*.d

busybox executes the following phases

* pre-up
* up -- unless "post-up" cmdline is given
* down -- unless "pre-down" cmdline is given
* post-down

with `run-parts /etc/network/if-<phase>.d` and ENV:

```
"IF_%s=%s", <option[i]-name>, <option[i]-value>
"IFACE=%s", <ifname>
"ADDRFAM=%s", <af>
"METHOD=%s", <method>
"MODE=%s", start|stop
"PHASE=%s", pre-up|up|down|post-down
```

