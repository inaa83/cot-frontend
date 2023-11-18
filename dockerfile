# Utiliser une image Node.js LTS comme base
FROM node:lts AS build
 
# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app
 
# Copier les fichiers du projet dans le conteneur
COPY . .

EXPOSE 4200
 
# Installer les dépendances
RUN npm install
 
# Construire l'application
RUN npm run build
 
# Commande pour démarrer l'application lorsqu'un conteneur est lancé
CMD ["npm", "start"]