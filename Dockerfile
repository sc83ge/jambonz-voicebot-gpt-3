# Basis-Image mit Node.js
FROM node:18

# Arbeitsverzeichnis im Container
WORKDIR /app

# Projektdateien kopieren
COPY package*.json ./
COPY . .

# Abhängigkeiten installieren
RUN npm install

# Port freigeben (optional, für lokale Tests)
EXPOSE 3000

# Startbefehl
CMD ["npm", "start"]
