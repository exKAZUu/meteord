set -e

echo "apt-get install --reinstall tzdata"
apt-get install --reinstall tzdata
echo "ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime"
ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
echo "bash $METEORD_DIR/lib/install_base.sh"
bash $METEORD_DIR/lib/install_base.sh
bash $METEORD_DIR/lib/install_node.sh
bash $METEORD_DIR/lib/install_phantomjs.sh
bash $METEORD_DIR/lib/cleanup.sh
