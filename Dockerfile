FROM ubuntu/nginx

RUN apt-get update -y
RUN apt install curl -y

#### copy nginx conf
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

#### copy artifact build from the 'build environment'
COPY ./ecollectv5 /usr/share/nginx/html

EXPOSE 4430
CMD ["nginx", "-g", "daemon off;"]
# docker build -t inteligeninfosys/ecollect-cbi:1.0 .