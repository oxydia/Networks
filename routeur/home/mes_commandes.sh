iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP
 
iptables -F
iptables -t nat -F
iptables -t nat -A POSTROUTING -s 10.18.0.0/16 -d 18.0.0.0/8 -j MASQUERADE
iptables -t nat -A POSTROUTING -s 10.28.0.0/16 -d 18.0.0.0/8 -j MASQUERADE
iptables -t nat -A PREROUTING -s 18.0.0.0/8 -d 18.0.0.1 -p tcp --dport 80 -j DNAT --to-destination 10.28.0.10:80

