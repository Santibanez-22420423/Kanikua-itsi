# Servidor web estático para KANIKUA ITSI
FROM nginx:alpine

# Copiar archivos estáticos al directorio de nginx
COPY public/ /usr/share/nginx/html/

# Configuración opcional de nginx (gzip, etc.)
RUN echo 'server { \
    listen 80; \
    server_name localhost; \
    root /usr/share/nginx/html; \
    index index.html; \
    \
    location / { \
        try_files $uri $uri/ /index.html; \
    } \
    \
    # Cache para assets estáticos \
    location ~* \.(css|js|png|jpg|jpeg|gif|ico|svg|woff|woff2)$ { \
        expires 7d; \
        add_header Cache-Control "public, immutable"; \
    } \
}' > /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
