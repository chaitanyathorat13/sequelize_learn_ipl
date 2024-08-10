const { DataTypes } = require("sequelize");
const {sequelize} = require("../connection/sql.connection");

const Summary = sequelize.define('Summary', {
  id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
  teamAName: { type: DataTypes.STRING },
  teamBName: { type: DataTypes.STRING },
  teamATotalScore: { type: DataTypes.INTEGER },
  teamBTotalScore: { type: DataTypes.INTEGER },
  teamASixes: { type: DataTypes.INTEGER },
  teamBSixes: { type: DataTypes.INTEGER },
  teamAPoints: { type: DataTypes.INTEGER },
  teamBPoints: { type: DataTypes.INTEGER }
}, { timestamps: false });


module.exports = Summary;
