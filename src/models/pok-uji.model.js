// See http://docs.sequelizejs.com/en/latest/docs/models-definition/
// for more of what you can do here.
const Sequelize = require('sequelize');
const DataTypes = Sequelize.DataTypes;

module.exports = function (app) {
  const sequelizeClient = app.get('sequelizeClient');
  const pokUji = sequelizeClient.define('pok_uji', {
    pok_uji_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    pok_uji: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    no_urut: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    force_of: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    hidden: {
      type: DataTypes.BOOLEAN,
      allowNull: false
    },
    id: {
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
  pokUji.associate = function (models) {
    // Define associations here
    pokUji.hasMany(models.users, {foreignKey: 'id', sourceKey: 'id'});
    // See http://docs.sequelizejs.com/en/latest/docs/associations/
  };

  return pokUji;
};
