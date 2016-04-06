set -e

apt-get install --reinstall tzdata
ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
date
bash $METEORD_DIR/lib/install_base.sh
bash $METEORD_DIR/lib/install_node.sh
bash $METEORD_DIR/lib/install_phantomjs.sh
bash $METEORD_DIR/lib/cleanup.sh
