ARG FROM_VERSION
FROM jpsalado92/devops-capstone:$FROM_VERSION
RUN rm /etc/nginx/conf.d/*
RUN rm /usr/share/nginx/html/index.html
COPY app/hello.conf /etc/nginx/conf.d/
COPY app/index.html /usr/share/nginx/html/
