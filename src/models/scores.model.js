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
    kode_naskah: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    penulisan_bobot_1_nr1: {
      type: DataTypes.STRING,
      allowNull: false
    },
    pembahasan_bobot_5_nr1: {
      type: DataTypes.STRING,
      allowNull: false
    },
    manfaat_bobot_3_nr1: {
      type: DataTypes.STRING,
      allowNull: false
    },
    teknisi_bobot_3_nr1: {
      type: DataTypes.STRING,
      allowNull: false
    },
    nilai_murni_narasumber_1_nr1: {
      type: DataTypes.STRING,
      allowNull: false
    },
    interviewee_nr1_id: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    penulisan_bobot_1_nr2: {
      type: DataTypes.STRING,
      allowNull: false
    },
    pembahasan_bobot_5_nr2: {
      type: DataTypes.STRING,
      allowNull: false
    },
    manfaat_bobot_3_nr2: {
      type: DataTypes.STRING,
      allowNull: false
    },
    teknisi_bobot_3_nr2: {
      type: DataTypes.STRING,
      allowNull: false
    },
    nilai_murni_narasumber_2_nr2: {
      type: DataTypes.STRING,
      allowNull: false
    },
    interviewee_nr2_id: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    status: {
      type: DataTypes.BOOLEAN,
      allowNull: false
    },
    ket: {
      type: DataTypes.TEXT,
      allowNull: false
    },
    id: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    team: {
      type: DataTypes.INTEGER,
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
    scores.hasMany(models.users, {foreignKey: 'id', sourceKey: 'id'});
    // See http://docs.sequelizejs.com/en/latest/docs/associations/
  };

  return scores;
};
