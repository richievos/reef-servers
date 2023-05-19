#!/bin/bash

# configs_dir=$(dirname $0)/../$1
#
# sudo rsync -r $configs_dir/nginx/ /etc/nginx/
#
# #sudo find /etc/nginx/ -type d -exec chmod 755 {} \;
# #sudo find /etc/nginx/ -type f -exec chmod 644 {} \;
#
# sudo find $configs_dir -type f -execdir chown root:root /etc/nginx/{} \;
#
# sudo find $configs_dir/sites-available/*.conf -type f -printf '%p' -execdir echo ln -s "/etc/nginx/sites-available/{}" "/etc/nginx/sites-enabled/{}" \;


configs_dir=$(dirname $0)/../nginx

sudo rsync -r $configs_dir /etc/nginx

#sudo find /etc/nginx/ -type d -exec chmod 755 {} \;
#sudo find /etc/nginx/ -type f -exec chmod 644 {} \;

sudo find $configs_dir -type f -execdir chown root:root /etc/nginx/{} \;

sudo find $configs_dir/sites-available/*.conf -type f -printf '%p' -execdir echo ln -s "/etc/nginx/sites-available/{}" "/etc/nginx/sites-enabled/{}" \;
