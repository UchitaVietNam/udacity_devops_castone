"use strict";

const express = require("express");

// Constants
const PORT = 8080;
const HOST = "0.0.0.0";

// App
const app = express();
app.get("/", (req, res) => {
  res.send("Hello World, my name is NGUYEN TUAN VU!")
});

app.listen(PORT, HOST);
console.log(`Running the server app on http://${HOST}:${PORT}`);
