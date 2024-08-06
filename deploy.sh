
if [ -z "$1" ]; then
  echo "No environment provided. Usage: ./deploy.sh staging|production"
  exit 1
fi

echo "window.currentEnv = '$1';" > public/env.js

firebase deploy --only hosting:$1
