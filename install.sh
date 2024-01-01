#
# Post-Installation Script Installer
# ----------------------------------
chmod +x fireword-install.sh
# Ask if this is a host or a proxy
echo "Is this a host or a proxy?"
echo "1. Host"
echo "2. Proxy"
read -r -p "Enter your choice: " choice
case $choice in
[1]*)
    bash ./host/install.sh
    ;;
[2]*)
    bash ./proxy/install.sh
    ;;
*)
    echo "Invalid choice"
    ;;
esac
