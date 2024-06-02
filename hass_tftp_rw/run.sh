#!/usr/bin/with-contenv bashio

echo "Starting server."
echo "Sharing files:"
ls /share/srv/tftp

in.tftpd -L --secure  --create /share/srv/tftp
