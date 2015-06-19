#/bin/bash

# http host (domain for SEO)
# www.holisticware.net
#
ifconfig eth0 | grep inet | awk '{ print $2}'
 
export DOMAIN=holisticware.net
export HOST_HTTP=test-aspnet-v5-01.$DOMAIN

export NGINX_CONFIG_DIR=/etc/nginx/conf.d

ls -al \
	$NGINX_CONFIG_DIR/
ls -al
	$NGINX_CONFIG_DIR/$HOST_HTTP.conf

sudo \
	rm -f \
	$NGINX_CONFIG_DIR/$HOST_HTTP.conf

sudo \
	sh -c \
	"echo \
	'
http 
{
    server_names_hash_bucket_size 64;
}
server 
{
    listen 80;
    server_name $HOST_HTTP;
    # server_name $HOST_HTTP $DOMAIN ;
    client_max_body_size 10M;
    location / {
        proxy_pass http://localhost:5004/;
        proxy_redirect off;
        proxy_set_header Host $HOST_HTTP;
        proxy_buffering off;
    }
}
	' \
	> $NGINX_CONFIG_DIR/$HOST_HTTP.conf
	"
	

cat \
	$NGINX_CONFIG_DIR/$HOST_HTTP.conf

	
# Create a web root directory for your ASP.NET 5 web application to reside:

id pi
# useradd -G www-data pi
# add (modify) existing user to existing group
sudo usermod -a -G www-data pi

sudo \
	mkdir /var/www
sudo \
	chown www-data:www-data /var/www
sudo \
	mkdir \
		/var/www/$HOST_HTTP
sudo \
	chown www-data:www-data \
		/var/www/$HOST_HTTP
ls -al \
		/var/www/$HOST_HTTP
	