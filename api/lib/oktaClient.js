const okta = require('@okta/okta-sdk-nodejs');

const client = new okta.Client({
  orgUrl: 'https://dev-276918.okta.com/',
  token: process.env.REACT_APP_AddFromEnvFileInRoot
});

module.exports = client;