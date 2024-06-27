# Environnement d'intégration bceao-poc

## Prérequis :
- Docker
- JDK 17

## Mise en place 
- docker compose up -d
- Télécharger Jenkins (https://get.jenkins.io/war-stable/2.452.2/jenkins.war) et le déposer dans le sous-répertoire jenkins
- Démarrer Jenkins via jenkins/.jenkins.sh
- Compléter l'installation de Jenkins en :
  - En installant les plugins par défaut
  - En installant les plugins suivants :
    - Blue Ocean
    - Pipeline Utility Test
    - Publish HTML
- Compléter l'installation de Jenkins en :
  - Définissant l'outil **JDK17** pointant vers l'installation locale de Java
- Compléter l'installation de Jenkins en :
  - Définissant le crédentiel **SONAR_TOKEN**
    - Se connecter en tant qu'admin sur SonarQube : http://localhost:9000
    - Dans les préférences du compte -> security : Générer un jeton 'Analyse globale', Pas de révocation
    - Dans Jenkins, Ajouter un crédentiels de type Secret text nommé SONAR_TOKEN avec la valeur du jeton SONAR
