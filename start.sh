#!/bin/bash

echo "🚀 Démarrage d'EcoleDirecte Exporter..."
echo ""

# Vérifier si Node.js est installé
if ! command -v node &> /dev/null; then
    echo "❌ Node.js n'est pas installé"
    echo "📥 Installez Node.js depuis: https://nodejs.org/"
    echo ""
    
    # Sur macOS, proposer d'installer avec Homebrew
    if [[ "$OSTYPE" == "darwin"* ]]; then
        echo "💡 Sur macOS, vous pouvez installer avec Homebrew:"
        echo "   brew install node"
    fi
    
    # Sur Ubuntu/Debian
    if [[ -f /etc/debian_version ]]; then
        echo "💡 Sur Ubuntu/Debian, vous pouvez installer avec:"
        echo "   sudo apt update && sudo apt install nodejs npm"
    fi
    
    exit 1
fi

echo "✅ Node.js détecté: $(node --version)"
echo ""

echo "🌐 Démarrage du serveur..."
node server.js