FROM node:14-alpine

# Installer git et python
RUN apk add --no-cache git python3 make g++

# cloner le dépôt
RUN git clone -q https://github.com/zkb4774/todo-app

# Dossier courant
WORKDIR /todo-app

COPY . .

# Installer les dépendances
RUN yarn install --production

# Démarrer l'application
CMD ["node", "/src/index.js"]
