#!/bin/bash

# Script d'installation du backend dans le repo Maven local

echo "📦 Installation du backend dans Maven local..."

# Nettoyer et installer
mvn clean install

if [ $? -eq 0 ]; then
    echo "✅ Backend installé avec succès !"
    echo "📍 Le frontend peut maintenant l'utiliser"
    echo ""
    echo "Dans le frontend, ajoutez dans pom.xml :"
    echo "<dependency>"
    echo "    <groupId>com.gestionstock</groupId>"
    echo "    <artifactId>gestion-stock-backend</artifactId>"
    echo "    <version>1.0-SNAPSHOT</version>"
    echo "</dependency>"
else
    echo "❌ Erreur lors de l'installation"
    exit 1
fi