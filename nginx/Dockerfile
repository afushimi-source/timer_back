FROM nginx:1.16
# USER root
# RUN apt-get update && \
#   apt-get install -y apt-utils \
#   locales && \
#   echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen && \
#   locale-gen ja_JP.UTF-8
# ENV LC_ALL ja_JP.UTF-8
# 初期状態の設定ファイル

RUN rm -f /etc/nginx/conf.d/*
ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
# ADD ./nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
