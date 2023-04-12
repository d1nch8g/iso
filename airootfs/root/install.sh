echo 'Enter your username:'
read USERNAME
sed -i "s/<USERNAME>/$USERNAME/g" creds.json
sed -i "s/<USERNAME>/$USERNAME/g" gitconfig

echo 'Enter your password:'
read PASSOWRD
sed -i "s/<PASSOWRD>/$PASSWORD/g" creds.json

echo 'Enter your email:'
read EMAIL
sed -i "s/<EMAIL>/$EMAIL/g" gitconfig.json

archinstall --silent --disk_layouts disk.json --config config.json --creds creds.json
