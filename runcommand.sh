#!/usr/bin/env bash
sed 's/\/var\/www\/html;/\/data;\n        autoindex on;\n        autoindex_exact_size off;\n        autoindex_localtime on;\n/' /etc/nginx/sites-enabled/default -i
/etc/init.d/nginx restart
