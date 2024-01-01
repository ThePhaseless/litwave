#
# Post-Installation Script Installer
# ----------------------------------

# Ask if this is a host or a proxy
echo "Is this a host or a proxy?"
echo "1. Host"
echo "2. Proxy"
read -r -p "Enter your choice: " choice
case $choice in
[1]*)
    chmod +x ./host/install.sh
    ./host/install.sh
    ;;
[2]*)
    chmod +x ./proxy/install.sh
    ./proxy/install.sh
    ;;
*)
    echo "Invalid choice"
    ;;
esac
