NT_IF="eth0" # connected to internet
IPT="/sbin/iptables" # path to iptables
 
# default action, can be DROP or REJECT
ACTION="DROP"
 
# Drop packet that claiming from our own server on WAN port
$IPT -A INPUT -i $INT_IF -s $SERVER_IP -j $ACTION
$IPT -A OUTPUT -o $INT_IF -s $SERVER_IP -j $ACTION
 
# Drop packet that claiming from our own internal LAN on WAN port
$IPT -A INPUT -i $INT_IF -s $LAN_RANGE -j $ACTION
$IPT -A OUTPUT -o $INT_IF -s $LAN_RANGE -j $ACTION
 
## Drop all spoofed
$IPT -A INPUT -i $INT_IF -s $ip -j $ACTION
$IPT -A OUTPUT -o $INT_IF -s $ip -j $ACTION
done
## add or call your rest of script below to customize iptables ##
