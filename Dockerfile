FROM centos
RUN yum install -y git \
    && git clone https://github.com/xiaofsu/bbs_zombieden \
    && mv bbs_zombieden zombieden  \ 
    && chmod -R 777 zombieden \
    && cd zombieden \
    && yum install -y nodejs \
    && npm install \
    && npm i pm2 -g  \
    && pm2 start start.js
CMD [ "cd /zombieden/", "pm2 start start.js" ]