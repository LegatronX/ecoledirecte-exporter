# 📋 Guide d'installation - EcoleDirecte Exporter

## 🚀 Installation rapide

### Option 1 : Démonstration (Aucune installation requise)

1. **Téléchargez** `index.html`
2. **Ouvrez** dans votre navigateur
3. **Testez** avec le mode démonstration

### Option 2 : Serveur local (Données réelles)

#### Prérequis
- **Node.js** 18+ : https://nodejs.org/
- **Git** (optionnel) : https://git-scm.com/

#### Installation

```bash
# Cloner le dépôt
git clone https://github.com/LegatronX/ecoledirecte-exporter.git
cd ecoledirecte-exporter

# Démarrer le serveur
node server.js

# Ou utiliser les scripts fournis
./start.sh        # Linux/macOS
start.bat         # Windows
```

## 📱 Utilisation

1. Ouvrez http://localhost:3000
2. Connectez-vous avec vos identifiants EcoleDirecte
3. Sélectionnez vos formats d'export
4. Téléchargez vos données

## 🔧 Configuration avancée

### Variables d'environnement

```bash
# Port personnalisé (défaut: 3000)
export PORT=8080
node server.js

# Mode développement
export NODE_ENV=development
node server.js
```

### Docker (optionnel)

```dockerfile
# Dockerfile simple
FROM node:18-alpine
WORKDIR /app
COPY . .
EXPOSE 3000
CMD ["node", "server.js"]
```

```bash
# Construction et lancement
docker build -t ecoledirecte-exporter .
docker run -p 3000:3000 ecoledirecte-exporter
```

## 🌐 Déploiement web

### Heroku

```bash
# Installation Heroku CLI
npm install -g heroku

# Déploiement
heroku create votre-app-name
git push heroku main
heroku open
```

### Netlify/Vercel

1. **Fork** ce dépôt
2. **Connectez** votre compte GitHub
3. **Déployez** automatiquement

## 🐛 Résolution de problèmes

### Node.js non trouvé

```bash
# Vérifier l'installation
node --version
npm --version

# Si non installé : https://nodejs.org/
```

### Port déjà utilisé

```bash
# Utiliser un autre port
PORT=8080 node server.js

# Ou tuer le processus existant
lsof -ti:3000 | xargs kill -9
```

### Erreur de connexion EcoleDirecte

1. **Vérifiez** vos identifiants sur le site officiel
2. **Testez** d'abord en mode démonstration
3. **Attendez** quelques minutes entre les tentatives

### CORS / Sécurité

- **Utilisez** obligatoirement un serveur web (pas de fichier local)
- **Respectez** les limitations de l'API EcoleDirecte
- **Ne partagez** jamais vos identifiants

## 📞 Support

Problème d'installation ? 
[Créez une issue](https://github.com/LegatronX/ecoledirecte-exporter/issues)

## 🔄 Mise à jour

```bash
# Récupérer les dernières modifications
git pull origin main

# Redémarrer le serveur
node server.js
```