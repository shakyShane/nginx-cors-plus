echo "Adding $TARGET_DOMAIN to the NGINX config"
sed -i -e "s/___TARGET_DOMAIN___/$TARGET_DOMAIN/g" /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'