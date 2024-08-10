const express = require("express");
const app = express();
const { connectToMysql, syncToDb } = require("./connection/sql.connection");

app.use(express.json());
app.use(express.urlencoded({ extended: false }));

require("./models/player.model")
require("./models/scoreboard.model")
require("./models/summary.model")

syncToDb();
connectToMysql()
  .then(() => {
    app.listen(port, () => {
      console.log(`Server running on port ${port}`);
    });
    console.log("In connectToMysql()");
    console.log("SQL CONNECTED");
  })
  .catch((error) => {
    console.log("Not connected", error);
  });

const port = 4001;
