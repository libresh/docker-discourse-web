FROM indiehosters/discourse:2.2.0.beta4 as discourse
FROM nginx
COPY --from=discourse /home/discourse/discourse/public /home/discourse/discourse/public
VOLUME /var/nginx/cache
COPY nginx.conf /etc/nginx/nginx.conf
