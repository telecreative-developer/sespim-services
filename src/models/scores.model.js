// See http://docs.sequelizejs.com/en/latest/docs/models-definition/
// for more of what you can do here.
const Sequelize = require('sequelize');
const DataTypes = Sequelize.DataTypes;

module.exports = function (app) {
  const sequelizeClient = app.get('sequelizeClient');
  const scores = sequelizeClient.define('scores', {
    score_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    title: {
      type: DataTypes.STRING,
      allowNull: false
    },
    akademik_url: {
      type: DataTypes.TEXT,
      allowNull: false
    },
    akademik_loc: {
      type: DataTypes.TEXT,
      allowNull: false
    },
    kepribadian_url: {
      type: DataTypes.TEXT,
      allowNull: false
    },
    kepribadian_loc: {
      type: DataTypes.TEXT,
      allowNull: false
    },
    kesehatan_url: {
      type: DataTypes.TEXT,
      allowNull: false
    },
    kesehatan_loc: {
      type: DataTypes.TEXT,
      allowNull: false
    }
  }, {
    hooks: {
      beforeCount(options) {
        options.raw = true;
      }
    }
  });

  // eslint-disable-next-line no-unused-vars
  scores.associate = function (models) {
    // Define associations here
    // See http://docs.sequelizejs.com/en/latest/docs/associations/
  };

  return scores;
};
