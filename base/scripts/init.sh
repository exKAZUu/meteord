set -e

apt-get install graphicsmagick
apt-get install --reinstall tzdata
cp -f /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
rm -Rf /usr/share/zoneinfo
date
bash $METEORD_DIR/lib/install_base.sh
bash $METEORD_DIR/lib/install_node.sh
bash $METEORD_DIR/lib/install_phantomjs.sh
bash $METEORD_DIR/lib/cleanup.sh
