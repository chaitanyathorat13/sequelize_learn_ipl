const { DataTypes } = require("sequelize");
const { sequelize } = require("../connection/sql.connection");

const Player = sequelize.define(
  "Player",
  {
    playerId: { type: DataTypes.INTEGER, primaryKey: true },
    name: { type: DataTypes.STRING },
    age: { type: DataTypes.INTEGER },
  },
  { timestamps: false }
);

module.exports = Player;
