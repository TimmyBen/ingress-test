const express = require("express");
const app = express();

app.get("/route1", (req, res) => {
  res.send("Route 1 is called");
});

app.get("/route2", (req, res) => {
  res.send("Route 2 is called");
});

app.listen(3000, () => {
  console.log("Server listening on port 3000");
});
