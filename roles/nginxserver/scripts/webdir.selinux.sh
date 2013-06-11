
if [ ! -e /ansible/web.selinux ]; then
  semanage fcontext -a -t httpd_config_t "/web(/.*)?"
  fixfiles restore /web
  mkdir -p /ansible && touch /ansible/web.selinux
fi
