// See http://docs.sequelizejs.com/en/latest/docs/models-definition/
// for more of what you can do here.
const Sequelize = require('sequelize');
const DataTypes = Sequelize.DataTypes;

module.exports = function (app) {
  const sequelizeClient = app.get('sequelizeClient');
  const thumbnails = sequelizeClient.define('thumbnails', {
    thumbnail_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    thumbnail_url: {
      type: DataTypes.STRING,
      allowNull: false
    },
    post_id: {
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
  thumbnails.associate = function (models) {
    // Define associations here
    thumbnails.hasMany(models.posts, {foreignKey: 'post_id', sourceKey: 'post_id'});
    // See http://docs.sequelizejs.com/en/latest/docs/associations/
  };

  return thumbnails;
};
