#!/bin/sh

cd /var/www 
echo "--------------------------------------------------------------------------------------"
echo "Configuring composer packages"
echo "--------------------------------------------------------------------------------------"
composer install 

echo "--------------------------------------------------------------------------------------"
echo "Configuring PSR-4 autoload"
echo "--------------------------------------------------------------------------------------"
composer dump-autoload

echo "--------------------------------------------------------------------------------------"
echo "Configuring Laravel"
echo "--------------------------------------------------------------------------------------"
php artisan key:generate 
php artisan cache:clear 
php artisan config:clear 
php artisan migrate:fresh

echo "--------------------------------------------------------------------------------------"
echo "Configuring front-end dependencies"
echo "--------------------------------------------------------------------------------------"

npm install
