# Script de démarrage pour Docker Compose

# Définir les variables d'environnement
$env:DB_DATABASE="carviit"
$env:DB_USERNAME="carviit_user"
$env:DB_PASSWORD="carviit_password"
$env:DB_HOST="db"
$env:DB_PORT="3306"
$env:APP_ENV="local"
$env:APP_DEBUG="true"
$env:APP_URL="http://localhost:8008"

# Démarrer les services Docker Compose
Write-Host "Démarrage des services Docker..." -ForegroundColor Green
docker-compose up -d --build

# Afficher l'URL d'accès
Write-Host "`nL'application devrait être accessible à l'adresse :" -ForegroundColor Green
Write-Host "http://localhost:8008" -ForegroundColor Cyan

# Afficher les logs des conteneurs
Write-Host "`nAffichage des logs (appuyez sur Ctrl+C pour arrêter) :" -ForegroundColor Green
docker-compose logs -f
