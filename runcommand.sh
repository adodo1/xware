#!/usr/bin/env bash
sed 's/\/var\/www\/html;/\/data;\n        autoindex on;\n        autoindex_exact_size off;\n        autoindex_localtime on;\n        location ~ \\.php\$ {\n               include snippets\/fastcgi-php.conf;\n               fastcgi_pass unix:\/run\/php\/php7.0-fpm.sock;\n        }\n/' /etc/nginx/sites-enabled/default -i
/etc/init.d/php7.0-fpm restart
/etc/init.d/nginx restart

# 添加探针文件
echo "<?php phpinfo(); ?>" > /data/p.php


