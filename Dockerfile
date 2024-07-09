# Utilisez l'image de base nginx
FROM nginx:alpine

# Supprimez le fichier de configuration par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiez les fichiers de l'application Flutter web dans le répertoire de Nginx
COPY . /usr/share/nginx/html

# Exposez le port 80 pour le serveur web
EXPOSE 80

# Lancez Nginx
CMD ["nginx", "-g", "daemon off;"]