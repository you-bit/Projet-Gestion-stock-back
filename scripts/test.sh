#!/bin/bash

# Script de tests avec rapport

echo "🧪 Lancement des tests..."

# Tests avec rapport de couverture
mvn clean test

echo ""
echo "📊 Résumé des tests :"
echo "────────────────────"

# Afficher le résumé
mvn surefire-report:report

echo ""
echo "✅ Tests terminés !"
echo "📍 Rapport : target/surefire-reports/"