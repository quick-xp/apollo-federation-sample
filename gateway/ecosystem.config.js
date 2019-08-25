module.exports = {
  apps: [
    {
      name: "gateway",
      script: "dist/src/infrastructure/server.js",
      exec_mode: "cluster",
      instances: -1,
      env: {
        NODE_ENV: "development"
      },
      env_production: {
        NODE_ENV: "production"
      }
    }
  ]
};
