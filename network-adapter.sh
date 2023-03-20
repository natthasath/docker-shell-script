interface_name=$(ifconfig | awk '/^(ens|eth)/ {print $1}' | sed 's/://')

ifconfig $interface_name