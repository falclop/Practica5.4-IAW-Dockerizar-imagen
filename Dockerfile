FROM ubuntu:24.04

LABEL AUTHOR="Fabián Alcaide"
LABEL DESCRIPTION="Imagen de web 2028"

RUN apt update && \
    apt install nginx -y && \
    apt install git -y && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/josejuansanchez/2048 /app && \
    mv /app/* /var/www/html

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]
# docker build -t falclop/2048-fabian:1.0 .