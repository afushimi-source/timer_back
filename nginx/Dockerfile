FROM nginx:latest
# FROM nginx:1.16
RUN apt-get update && \
  apt-get install -y curl
# apt-get install -y apt-utils \
#   locales && \
#   echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen && \
#   locale-gen ja_JP.UTF-8
# ENV LC_ALL ja_JP.UTF-8
# 初期状態の設定ファイル
# ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
# ADD ./nginx/default.conf /etc/nginx/conf.d/default.conf
ADD custom.conf /etc/nginx/conf.d


CMD /usr/sbin/nginx -g 'daemon off;'
