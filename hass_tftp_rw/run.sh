#!/usr/bin/with-contenv bashio

echo "Starting server."
echo "Sharing files:"
mkdir -p /share/srv/tftp
ls /share/srv/tftp

in.tftpd -L --secure  --create --permissive /share/srv/tftp
