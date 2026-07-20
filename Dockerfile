FROM nginx:alpine
RUN env
COPY ./default.conf /etc/nginx/conf.d/
