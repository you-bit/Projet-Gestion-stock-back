# 🏗️ Architecture Backend

## Vue d'ensemble

Le backend suit une architecture en couches (Layered Architecture) :

┌─────────────────────────────────────┐
│         Service Layer               │  ← Logique métier
│  (AuthService, ProduitService, ...) │
└──────────────┬──────────────────────┘
│
┌──────────────▼──────────────────────┐
│          DAO Layer                  │  ← Accès données
│  (ProduitDAO, UtilisateurDAO, ...)  │
└──────────────┬──────────────────────┘
│
┌──────────────▼──────────────────────┐
│         Database Layer              │  ← MySQL
│            (JDBC)                   │
└─────────────────────────────────────┘

## Couches

### 1. Model Layer
- **Responsabilité** : Représenter les entités métier
- **Contenu** : 15 classes POJO
- **Règles** :
    - Getters/Setters
    - toString(), equals(), hashCode()
    - Méthodes de validation basique

### 2. DAO Layer
- **Responsabilité** : Accès aux données (CRUD)
- **Pattern** : Interface + Implémentation
- **Contenu** : 15 interfaces + 15 implémentations
- **Technologies** : JDBC, PreparedStatement

### 3. Service Layer
- **Responsabilité** : Logique métier
- **Contenu** : 10 services
- **Règles** :
    - Validation complexe
    - Transactions
    - Orchestration DAO
    - Gestion erreurs

### 4. Util Layer
- **Responsabilité** : Fonctions utilitaires
- **Contenu** : DatabaseConnection, PasswordHasher, etc.

### 5. Exception Layer
- **Responsabilité** : Gestion des erreurs
- **Contenu** : 6 exceptions personnalisées

## Patterns Utilisés

1. **DAO Pattern** : Séparation accès données / logique métier
2. **Singleton** : DatabaseConnection
3. **Factory** : Création objets complexes
4. **Strategy** : Validation différentes selon type

## Flux de Données

Frontend
→ Controller
→ Service
→ DAO
→ Database

Exemple :
LoginController (Frontend)
→ AuthService.authenticate()
→ UtilisateurDAO.findByEmail()
→ MySQL SELECT

## Sécurité

1. **Mots de passe** : Hashés avec BCrypt
2. **SQL Injection** : Protection via PreparedStatement
3. **Validation** : Données validées avant insertion
4. **Exceptions** : Messages ne révèlent pas détails techniques

## Performance

1. **Connection Pooling** : Réutilisation connexions
2. **PreparedStatement** : Requêtes précompilées
3. **Indexes BD** : Sur colonnes recherchées
4. **Lazy Loading** : Chargement données à la demande