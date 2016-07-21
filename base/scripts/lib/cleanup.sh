## Borrowed from: https://github.com/chriswessels/meteor-tupperware

set -e

printf "\n[-] Performing post install cleanup...\n\n"

# Clean out docs
rm -rf /usr/share/{doc,doc-base,man,locale,zoneinfo}

# Clean out package management dirs
rm -rf /var/lib/{cache,log}

# clean additional files created outside the source tree
rm -rf /root/{.cache,.config,.local}
rm -rf /tmp/*

# remove os dependencies
apt-get -y autoremove
rm -rf /var/lib/apt/lists/*

printf "\n[-] Performing final cleanup...\n"

# clean out docs
rm -rf /usr/share/{doc,doc-base,man,locale,zoneinfo}

# clean out package management dirs
rm -rf /var/lib/{cache,log}

# remove meteor
rm -rf /usr/local/bin/meteor
rm -rf /root/.meteor

# clean additional files created outside the source tree
rm -rf /root/{.npm,.cache,.config,.cordova,.local}
rm -rf /tmp/*

# clean up npm
npm cache clean

# remove os dependencies
apt-get -y purge ca-certificates curl git bzip2
apt-get -y autoremove
apt-get -y clean
apt-get -y autoclean
rm -rf /var/lib/apt/lists/*
