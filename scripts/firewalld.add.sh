
TYPE=$1
ACTION=$2

if [ ! -e /ansible/firewalld.${TYPE}.${ACTION} ]; then
  firewall-cmd --zone=public --add-${TYPE}=${ACTION}
  firewall-cmd --zone=public --permanent --add-${TYPE}=${ACTION}
  mkdir -p /ansible && touch /ansible/firewalld.${TYPE}.${ACTION}
fi
