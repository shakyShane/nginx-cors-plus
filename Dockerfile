FROM nginx:1.13-alpine

COPY default.conf /etc/nginx/conf.d/default.conf
COPY start.sh /
RUN chmod +x /start.sh
ENTRYPOINT /start.sh
