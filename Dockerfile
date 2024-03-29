FROM openresty/openresty:1.19.9.1-4-centos7

RUN opm get \
      #SkyLothar/lua-resty-jwt \ 
      #xiangnanscu/lua-resty-cookie \
      ledgetech/lua-resty-http
#RUN luarocks install xml2lua

COPY src/nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY src/conf.d /etc/nginx/conf.d
COPY src/app /etc/nginx/app
COPY src/public /etc/nginx/public
CMD /usr/bin/openresty -g "daemon off;"
