#!/bin/bash

chmod 775 -R /etc/bind
# chown root:bind /var/bind

# exec /usr/sbin/named -u bind -g
exec /usr/sbin/named -g