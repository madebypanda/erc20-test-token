require("dotenv").config();
const config = require("./config");

module.exports = [
  config.name,
  config.token,
];
