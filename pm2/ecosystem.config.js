const settings = require('./settings.json');

module.exports = {
  apps: [{
    name: 'Ako',
    script: 'bundle/main.js',
    instances: 1,
    autorestart: true,
    watch: true,
    env: {
      NODE_ENV: 'production',
      MONGO_URL: 'mongodb://localhost:27017/{{database}}',
      ROOT_URL: 'https://{{domain}}',
      METEOR_SETTINGS: JSON.stringify(settings),
      PORT: 3000
    }
  }],
};
