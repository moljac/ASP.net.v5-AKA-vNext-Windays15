#/bin/bash

# http host (domain for SEO)
# www.holisticware.net
#
export DOMAIN=holisticware.net
export HOST_HTTP=www.$DOMAIN

export NGINX_CONFIG_DIR=/etc/nginx/conf.d

ls -al \
	$NGINX_CONFIG_DIR/
ls -al
	$NGINX_CONFIG_DIR/$DOMAIN.conf

sudo \
	sh -c \
	"echo \
	'
server 
{
    listen 80;
    server_name $DOMAIN www.$DOMAIN;
    client_max_body_size 10M;
    location / {
        proxy_pass http://localhost:5004/;
        proxy_redirect off;
        proxy_set_header HOST $host;
        proxy_buffering off;
    }
}
	' \
	> $NGINX_CONFIG_DIR/$DOMAIN.conf
	"
	

cat \
	$NGINX_CONFIG_DIR/$DOMAIN.conf

	
Create a web root directory for your ASP.NET 5 web application to reside:

sudo mkdir /var/www
sudo chown www-data:www-data /var/www
sudo mkdir /var/www/<domain-name>
sudo chown www-data:www-data /var/www/<domain-name>
	