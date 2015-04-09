;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     ns.gassnertech.com. root.ns.gassnertech.com. (
                              1         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      ns.gassnertech.com.
@       IN      A       176.31.121.176
@       IN      AAAA    ::1
ns      IN      A       176.31.121.176
www     IN      A       176.31.121.176