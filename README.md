
#### **Repo Backend (JAR)**

gestion-stock-backend/
│
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/
│   │   │       └── gestionstock/
│   │   │           │
│   │   │           ├── model/                    
│   │   │           │   │
│   │   │           │   ├── utilisateur/          
│   │   │           │   │   ├── Utilisateur.java (abstract)
│   │   │           │   │   ├── Administrateur.java
│   │   │           │   │   ├── ResponsableApprovisionnement.java
│   │   │           │   │   ├── ResponsableVentes.java
│   │   │           │   │   └── Magasinier.java
│   │   │           │   │
│   │   │           │   ├── produit/              
│   │   │           │   │   └── Produit.java
│   │   │           │   │
│   │   │           │   ├── partenaire/          
│   │   │           │   │   ├── Fournisseur.java
│   │   │           │   │   └── Client.java
│   │   │           │   │
│   │   │           │   ├── document/             
│   │   │           │   │   ├── BonCommande.java
│   │   │           │   │   ├── LigneCommande.java
│   │   │           │   │   ├── BonLivraison.java
│   │   │           │   │   ├── LigneLivraison.java
│   │   │           │   │   ├── Facture.java
│   │   │           │   │   ├── BonSortie.java
│   │   │           │   │   └── LigneSortie.java
│   │   │           │   │
│   │   │           │   ├── stock/                
│   │   │           │   │   ├── MouvementStock.java
│   │   │           │   │   ├── Inventaire.java
│   │   │           │   │   └── LigneInventaire.java
│   │   │           │   │
│   │   │           │   └── systeme/              
│   │   │           │       └── Rapport.java
│   │   │           │
│   │   │           ├── dao/                      
│   │   │           │   ├── interfaces/           
│   │   │           │   │   ├── IUtilisateurDAO.java
│   │   │           │   │   ├── IProduitDAO.java
│   │   │           │   │   ├── IFournisseurDAO.java
│   │   │           │   │   ├── IClientDAO.java
│   │   │           │   │   ├── IBonCommandeDAO.java
│   │   │           │   │   ├── ILigneCommandeDAO.java
│   │   │           │   │   ├── IBonLivraisonDAO.java
│   │   │           │   │   ├── ILigneLivraisonDAO.java
│   │   │           │   │   ├── IFactureDAO.java
│   │   │           │   │   ├── IBonSortieDAO.java
│   │   │           │   │   ├── ILigneSortieDAO.java
│   │   │           │   │   ├── IMouvementStockDAO.java
│   │   │           │   │   ├── IInventaireDAO.java
│   │   │           │   │   ├── ILigneInventaireDAO.java
│   │   │           │   │   └── IRapportDAO.java
│   │   │           │   │
│   │   │           │   └── implementation/       
│   │   │           │       ├── UtilisateurDAO.java        
│   │   │           │       ├── ProduitDAO.java               
│   │   │           │       ├── FournisseurDAO.java        
│   │   │           │       ├── ClientDAO.java             
│   │   │           │       ├── BonCommandeDAO.java        
│   │   │           │       ├── LigneCommandeDAO.java      
│   │   │           │       ├── BonLivraisonDAO.java       
│   │   │           │       ├── LigneLivraisonDAO.java     
│   │   │           │       ├── FactureDAO.java            
│   │   │           │       ├── BonSortieDAO.java          
│   │   │           │       ├── LigneSortieDAO.java        
│   │   │           │       ├── MouvementStockDAO.java    
│   │   │           │       ├── InventaireDAO.java         
│   │   │           │       ├── LigneInventaireDAO.java    
│   │   │           │       └── RapportDAO.java          
│   │   │           │
│   │   │           ├── service/
│   │   │           │   ├── AuthService.java
│   │   │           │   ├── UtilisateurService.java
│   │   │           │   ├── ProduitService.java
│   │   │           │   ├── FournisseurService.java
│   │   │           │   ├── ClientService.java
│   │   │           │   ├── CommandeService.java
│   │   │           │   ├── VenteService.java
│   │   │           │   ├── StockService.java
│   │   │           │   ├── InventaireService.java
│   │   │           │   └── RapportService.java
│   │   │           │
│   │   │           ├── util/
│   │   │           │   ├── DatabaseConnection.java
│   │   │           │   ├── PasswordHasher.java
│   │   │           │   ├── ValidationUtils.java
│   │   │           │   ├── DateUtils.java
│   │   │           │   ├── NumberUtils.java
│   │   │           │   └── ConfigLoader.java
│   │   │           │
│   │   │           └── exception/
│   │   │               ├── DatabaseException.java
│   │   │               ├── AuthenticationException.java
│   │   │               ├── ValidationException.java
│   │   │               ├── NotFoundException.java
│   │   │               ├── DuplicateException.java
│   │   │               └── StockException.java
│   │   └── resources/
│   │       └── config/
│   │           ├── database.properties.example
│   │           └── application.properties
│   └── test/
│       └── java/
│           └── com/
│               └── gestionstock/
│                   │
│                   ├── model/
│                   │   ├── ProduitTest.java
│                   │   ├── UtilisateurTest.java
│                   │   └── BonCommandeTest.java
│                   │
│                   ├── dao/
│                   │   ├── ProduitDAOTest.java
│                   │   ├── UtilisateurDAOTest.java
│                   │   ├── FournisseurDAOTest.java
│                   │   ├── ClientDAOTest.java
│                   │   └── BonCommandeDAOTest.java
│                   │
│                   ├── service/
│                   │   ├── AuthServiceTest.java
│                   │   ├── ProduitServiceTest.java
│                   │   ├── CommandeServiceTest.java
│                   │   └── StockServiceTest.java
│                   │
│                   └── util/
│                       ├── PasswordHasherTest.java
│                       └── ValidationUtilsTest.java
│
├── database/
│   ├── schema.sql
│   ├── data.sql
│   └── README.md
│
├── docs/
│   ├── architecture.md
│   └── ....
│
├── scripts/
│   ├── build.sh
│   ├── install.sh
│   └── test.sh
│
├── .gitignore
├── pom.xml
└── README.md
