FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY . /usr/share/nginx/html
RUN ls -ltr

EXPOSE 8090
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
