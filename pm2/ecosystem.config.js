const settings = require('./settings.json');

const app = {
  script: 'bundle/main.js',
  instances: 1,
  autorestart: true,
  watch: true,
  exec_mode: "fork_mode",
}

const env = {
  NODE_ENV: 'production',
  MONGO_URL: 'mongodb://localhost:27017/{{database}}',
  ROOT_URL: 'https://{{domain}}',
  METEOR_SETTINGS: JSON.stringify(settings),
}

module.exports = {
  apps: [{
    name: 'Ako-0', ...app,
    env: { ...env, PORT: 3000 }
  }, {
    name: 'Ako-1', ...app,
    env: { ...env, PORT: 3001 }
  }],
};
