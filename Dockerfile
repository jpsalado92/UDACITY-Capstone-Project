FROM jpsalado92/devops-capstone:latest
RUN rm /etc/nginx/conf.d/*
RUN rm /usr/share/nginx/html/index.html
COPY app/hello.conf /etc/nginx/conf.d/
COPY app/index.html /usr/share/nginx/html/
