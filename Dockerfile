FROM httpd:alpine

EXPOSE 80

COPY ./htdocs/ /usr/local/apache2/htdocs/

COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
