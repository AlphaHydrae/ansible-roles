
if [ ! -e /web/.selinux ]; then
  semanage fcontext -a -t httpd_config_t "/web(/.*)?"
  fixfiles restore /web
  touch /web/.selinux
fi
