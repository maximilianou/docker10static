FROM nginx:stable AS dev_static
#WORKDIR /app
COPY ./frontend/ /var/www/
COPY ./etc/nginx.conf /etc/nginx/conf.d/default.conf 
EXPOSE 80
#ENV NAME World
CMD ["nginx -g 'daemon off;'"]
