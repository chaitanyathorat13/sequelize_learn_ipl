const { DataTypes } = require("sequelize");
const { sequelize } = require("../connection/sql.connection");
const Summary = require("./summary.model");
const Player = require("./player.model");

const Scoreboard = sequelize.define(
  "Scoreboard",
  {
    uniqueId: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    summaryId: {
      type: DataTypes.INTEGER,
      references: { model: "Summaries", key: "id" },
    },
    teamATotalRun: { type: DataTypes.INTEGER },
    teamBTotalRun: { type: DataTypes.INTEGER },
    player1: { type: DataTypes.STRING },
    player2: { type: DataTypes.STRING },
    player3: { type: DataTypes.STRING },
    player4: { type: DataTypes.STRING },
    player5: { type: DataTypes.STRING },
    player6: { type: DataTypes.STRING },
    player7: { type: DataTypes.STRING },
    player8: { type: DataTypes.STRING },
    player9: { type: DataTypes.STRING },
    player10: { type: DataTypes.STRING },
    player11: { type: DataTypes.STRING },
    player12: { type: DataTypes.STRING },
    player13: { type: DataTypes.STRING },
    player14: { type: DataTypes.STRING },
    player15: { type: DataTypes.STRING },
    player16: { type: DataTypes.STRING },
    player17: { type: DataTypes.STRING },
    player18: { type: DataTypes.STRING },
    player19: { type: DataTypes.STRING },
    player20: { type: DataTypes.STRING },
    player21: { type: DataTypes.STRING },
    player22: { type: DataTypes.STRING },
  },
  { timestamps: false }
);

module.exports = Scoreboard;
