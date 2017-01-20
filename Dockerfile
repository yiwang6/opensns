FROM yiwang666/lamp
MAINTAINER YiWanG <admin@yiwang6.cn>

COPY src/opensns.zip /tmp/opensns.zip
COPY src/opensns.sql /tmp/opensns.sql

RUN apt-get install -y unzip

WORKDIR /tmp
RUN set -x \
    && unzip -x /tmp/opensns.zip \
 

COPY src/start.sh /start.sh
RUN chmod a+x /start.sh

EXPOSE 80
CMD ["/start.sh"]
