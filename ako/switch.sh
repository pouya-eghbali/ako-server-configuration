cd config

ln -sf "predefined/$1/config.js"   "config.js"
ln -sf "predefined/$1/config.scss" "config.scss"
ln -sf "predefined/$1/packages"    "packages"

cd ../.meteor

ln -sf "../config/packages" "packages"

echo "Switched to $1."