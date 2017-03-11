#!/usr/bin/env bash
sed 's/\/var\/www\/html;/\/data;\n        autoindex on;\n        autoindex_exact_size off;\n        autoindex_localtime on;\n        location ~ \\.php\$ {\n               include snippets\/fastcgi-php.conf;\n               fastcgi_pass unix:\/run\/php\/php7.0-fpm.sock;\n        }\n/' /etc/nginx/sites-enabled/default -i

service php7.0-fpm start
service ssh start
service nginx restart

# 添加探针文件
echo "<?php phpinfo(); ?>" > /data/p.php

# 解压内网映射
tar -xvfz /xware/sunny.tar.gz -C /xware/

