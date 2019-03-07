# Drop all packets by default.
iptables -P INPUT DROP
# Allow preexisting connections
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
# Allow SSH from 192.0.2.0/24
iptables -A INPUT -p tcp -s 192.0.2.0/24 --destination-port 22 -i eth0 -j ACCEPT
# Allow HTTP from all
iptables -A INPUT -p tcp --destination-port 80 -i eth0 -j ACCEPT
