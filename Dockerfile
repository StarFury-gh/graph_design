FROM nginx:alpine

# Копируем файл конфигурации nginx
COPY default_conf /etc/nginx/default_conf
COPY nginx.conf /etc/nginx/nginx.conf

# Копируем статические файлы сайта
COPY site /etc/static/web-site

# Опционально: проверяем конфигурацию при сборке
RUN nginx -t

EXPOSE 80


CMD ["nginx", "-g", "daemon off;"]

