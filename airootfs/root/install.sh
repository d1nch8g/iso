echo 'Enter your username:'
read USERNAME
sed -i "s/<USERNAME>/$USERNAME/g" creds.json

echo 'Enter your password:'
read PASSWORD
sed -i "s/<PASSWORD>/$PASSWORD/g" creds.json

archinstall --silent --disk_layouts disk.json --config config.json --creds creds.json
