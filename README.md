# 📚 EcoleDirecte Exporter

> **Application web moderne pour exporter automatiquement vos données EcoleDirecte vers Notion, iCloud et autres services**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/Node.js-20%2B-green)](https://nodejs.org/)
[![GitHub Stars](https://img.shields.io/github/stars/LegatronX/ecoledirecte-exporter)](https://github.com/LegatronX/ecoledirecte-exporter)

## ✨ Fonctionnalités

- 🔐 **Authentification robuste** avec gestion QCM 2FA (basée sur [moyennesed-v4](https://github.com/LegatronX/moyennesed-v4))
- 📤 **Export multi-format** : JSON, CSV, iCalendar, Notion
- 📱 **Interface responsive** moderne et intuitive
- 🎭 **Mode démonstration** avec données réalistes
- 🔒 **Sécurité** : aucun stockage de mots de passe, traitement local
- ⚡ **Performance** : extraction rapide et optimisée

## 📊 Formats d'export supportés

| Format | Description | Usage |
|--------|-------------|-------|
| 📄 **JSON** | Données complètes structurées | Développement, intégrations |
| 📊 **CSV** | Tableaux compatibles Excel | Analyse, statistiques |
| 📅 **iCalendar** | Emploi du temps + devoirs | iCloud, Google Calendar, Outlook |
| 🗂️ **Notion** | Bases de données organisées | Suivi scolaire, organisation |

## 🚀 Démarrage rapide

### Option 1 : Test immédiat (Mode démonstration)

1. **Téléchargez** [`index.html`](index.html)
2. **Ouvrez** dans votre navigateur
3. **Cliquez** "Lancer la démonstration"
4. **Explorez** les fonctionnalités avec des données fictives

### Option 2 : Serveur local (Données réelles)

```bash
# Cloner le dépôt
git clone https://github.com/LegatronX/ecoledirecte-exporter.git
cd ecoledirecte-exporter

# Démarrer le serveur (Node.js requis)
node server.js

# Ou utiliser les scripts fournis
./start.sh        # Linux/macOS  
start.bat         # Windows
```

Ouvrez ensuite http://localhost:3000 dans votre navigateur.

## 📱 Utilisation

### 1. Connexion EcoleDirecte
- Saisissez vos identifiants EcoleDirecte
- Répondez aux questions QCM si nécessaire (authentification 2FA)
- Sélectionnez votre compte élève

### 2. Sélection des données
- Choisissez la période (semaine, mois, trimestre, année)
- Sélectionnez les formats d'export souhaités
- Lancez l'extraction

### 3. Téléchargement des exports
- Récupérez vos fichiers générés
- Importez dans vos services favoris

## 📦 Structure du projet

```
ecoledirecte-exporter/
├── 📄 index.html              # Application complète avec démo
├── 🖥️ server.js               # Serveur Node.js pour données réelles
├── 📋 package.json            # Configuration npm
├── 🚀 start.sh / start.bat    # Scripts de démarrage
├── 📚 README.md               # Documentation
├── 📖 docs/                   # Documentation détaillée
└── 🎯 examples/               # Exemples d'exports
```

## 🔧 Installation avancée

### Prérequis
- **Node.js** 18+ (pour serveur local uniquement)
- **Navigateur moderne** (Chrome, Firefox, Safari, Edge)

### Configuration
```bash
# Installation des dépendances (optionnel)
npm install

# Configuration du port (défaut: 3000)
export PORT=8080
node server.js

# Mode développement avec rechargement auto
npm run dev
```

## 🎯 Intégrations

### 📅 Calendriers
- **iCloud** : Importer le fichier `.ics` via Mail.app
- **Google Calendar** : Paramètres → Importer et exporter
- **Outlook** : Fichier → Ouvrir et exporter → Importer

### 🗂️ Notion
1. Téléchargez le fichier JSON Notion
2. Dans Notion : Settings & Members → Import
3. Sélectionnez votre fichier JSON
4. Les bases de données sont créées automatiquement

### 📊 Analyse de données
- **Excel/Google Sheets** : Ouvrir le fichier CSV
- **Power BI** : Importer depuis JSON/CSV
- **Tableau** : Connecteur JSON/CSV

## 🛡️ Sécurité et confidentialité

### ✅ Bonnes pratiques
- **Aucun stockage** de mots de passe ou données personnelles
- **Connexion directe** à l'API EcoleDirecte officielle
- **Traitement local** des données dans votre navigateur
- **Code source ouvert** pour transparence complète

### ⚠️ Limitations
- **CORS** : Nécessite un serveur web pour contourner les restrictions navigateur
- **API EcoleDirecte** : Dépendant de la disponibilité du service
- **Authentification** : Respecte les limitations de sécurité EcoleDirecte

## 🤝 Contributions

Les contributions sont les bienvenues ! Voici comment participer :

1. **Fork** le projet
2. **Créez** une branche feature (`git checkout -b feature/AmazingFeature`)
3. **Committez** vos changements (`git commit -m 'Add some AmazingFeature'`)
4. **Pushez** vers la branche (`git push origin feature/AmazingFeature`)
5. **Ouvrez** une Pull Request

### Développement local
```bash
git clone https://github.com/LegatronX/ecoledirecte-exporter.git
cd ecoledirecte-exporter

# Développement avec serveur local
node server.js

# Test des fonctionnalités
# Ouvrir http://localhost:3000
```

## 🐛 Signaler un problème

Vous avez trouvé un bug ou avez une suggestion ? 
[Créez une issue](https://github.com/LegatronX/ecoledirecte-exporter/issues/new) avec :

- **Description** claire du problème
- **Étapes** pour reproduire
- **Navigateur** et version utilisés
- **Captures d'écran** si applicable

## 📋 Roadmap

- [ ] 🔄 Synchronisation automatique
- [ ] 📧 Notifications par email
- [ ] 🎨 Thèmes personnalisables  
- [ ] 📱 Application mobile native
- [ ] 🔗 Intégrations supplémentaires (Trello, Monday.com...)
- [ ] 🤖 API publique pour développeurs

## 📄 Licence

Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE) pour plus de détails.

## 🙏 Remerciements

- **[moyennesed-v4](https://github.com/LegatronX/moyennesed-v4)** pour le système d'authentification EcoleDirecte
- **Communauté EcoleDirecte** pour le partage de connaissances API
- **Contributeurs** pour leurs améliorations continues

## 📞 Support

- 💬 **Discussions** : [GitHub Discussions](https://github.com/LegatronX/ecoledirecte-exporter/discussions)
- 🐛 **Issues** : [GitHub Issues](https://github.com/LegatronX/ecoledirecte-exporter/issues)
- 📧 **Email** : [Contactez-moi](mailto:your.email@example.com)

---

<div align="center">

**[⭐ Star ce projet](https://github.com/LegatronX/ecoledirecte-exporter)** si il vous aide !

Fait avec ❤️ pour la communauté étudiante française

</div>