#!/bin/bash

# Script de compilation du backend

echo "🔨 Compilation du backend..."

# Nettoyer
echo "🧹 Nettoyage..."
mvn clean

# Compiler
echo "⚙️  Compilation..."
mvn compile

# Tester
echo "🧪 Tests..."
mvn test

# Packager
echo "📦 Packaging..."
mvn package -DskipTests

echo "✅ Build terminé !"
echo "📍 JAR généré : target/gestion-stock-backend-1.0-SNAPSHOT.jar"