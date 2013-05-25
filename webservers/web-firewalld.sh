
if [ ! -e /web/.firewalld ]; then
  firewall-cmd --add-service=http
  firewall-cmd --permanent --add-service=http
  firewall-cmd --add-service=https
  firewall-cmd --permanent --add-service=https
  touch /web/.firewalld
fi
