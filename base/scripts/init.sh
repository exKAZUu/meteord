set -e

echo "apt-get install --reinstall tzdata"
apt-get install --reinstall tzdata
echo "ls -al /usr/share/zoneinfo"
ls -al /usr/share/zoneinfo
echo "bash $METEORD_DIR/lib/install_base.sh"
bash $METEORD_DIR/lib/install_base.sh
bash $METEORD_DIR/lib/install_node.sh
bash $METEORD_DIR/lib/install_phantomjs.sh
bash $METEORD_DIR/lib/cleanup.sh
