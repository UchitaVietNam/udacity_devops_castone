"use strict";

const express = require("express");

// App
const app = express();
app.get("/", (req, res) => {
  res.send("Hello World, my name is NGUYEN TUAN VU!");
});

// Constants
const PORT = 8080;
const HOST = "0.0.0.0";
app.listen(PORT, HOST);
console.log(`Running the server app on http://${HOST}:${PORT}`);
