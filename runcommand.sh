#!/usr/bin/env bash
sed 's/\/var\/www\/html/\/data\nautoindex on;\nautoindex_exact_size off;\nautoindex_localtime on;\n/' /etc/nginx/sites-enabled/default
/etc/init.d/nginx restart
