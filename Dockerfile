FROM nginxinc/nginx-unprivileged

#### copy nginx conf
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
# COPY ./nginx-demo.conf /etc/nginx/conf.d/default.conf

#### copy artifact build from the 'build environment'
COPY ./ecollectv5 /usr/share/nginx/html


EXPOSE 4430
CMD ["nginx", "-g", "daemon off;"]
# docker build --no-cache -t docker.io/inteligeninfosys/ecollect:prod-0.7.2 .
# docker build --no-cache -t docker.io/migutak/ecollect:demo-1.0.9 .

