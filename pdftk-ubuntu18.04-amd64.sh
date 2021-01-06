#!/bin/bash
# Required gcc-6-base package installed
# Reference: https://askubuntu.com/a/1046476

# download packages
curl -o /tmp/libgcj17_6.4.0-8ubuntu1_amd64.deb -L http://launchpadlibrarian.net/340410966/libgcj17_6.4.0-8ubuntu1_amd64.deb
curl -o /tmp/libgcj-common_6.4-3ubuntu1_all.deb -L http://launchpadlibrarian.net/337429932/libgcj-common_6.4-3ubuntu1_all.deb
curl -o /tmp/pdftk_2.02-4build1_amd64.deb -L https://launchpad.net/ubuntu/+source/pdftk/2.02-4build1/+build/10581759/+files/pdftk_2.02-4build1_amd64.deb
curl -o /tmp/pdftk-dbg_2.02-4build1_amd64.deb -L https://launchpad.net/ubuntu/+source/pdftk/2.02-4build1/+build/10581759/+files/pdftk-dbg_2.02-4build1_amd64.deb

# install packages
apt-get install /tmp/libgcj17_6.4.0-8ubuntu1_amd64.deb \
    /tmp/libgcj-common_6.4-3ubuntu1_all.deb \
    /tmp/pdftk_2.02-4build1_amd64.deb \
    /tmp/pdftk-dbg_2.02-4build1_amd64.deb

# delete deb files in /tmp directory
rm /tmp/libgcj17_6.4.0-8ubuntu1_amd64.deb \
    /tmp/libgcj-common_6.4-3ubuntu1_all.deb \
    /tmp/pdftk_2.02-4build1_amd64.deb \
    /tmp/pdftk-dbg_2.02-4build1_amd64.deb
