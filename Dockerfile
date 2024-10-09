# Utiliser l'image Node.js basée sur Alpine pour un conteneur léger
FROM node:18-alpine

# Définir le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copier le fichier package.json et yarn.lock dans le conteneur
COPY package.json yarn.lock ./

# Installer les dépendances du projet avec Yarn
RUN yarn install

# Copier le reste des fichiers du projet dans le conteneur
COPY . .

# Exposer le port 3000 sur lequel l'application écoute
EXPOSE 3000

# Spécifier la commande à exécuter pour démarrer l'application
CMD ["node", "src/index.js"]
