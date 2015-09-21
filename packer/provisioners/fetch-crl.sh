# Add fetch-crl to the rc.local
cat > /etc/rc.local << EOF
#!/bin/sh -e

[ -f /etc/default/fetch-crl ] && . /etc/default/fetch-crl
/usr/sbin/fetch-crl -q -p & 

exit 0
EOF


