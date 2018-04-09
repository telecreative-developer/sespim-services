// See http://docs.sequelizejs.com/en/latest/docs/models-definition/
// for more of what you can do here.
const Sequelize = require('sequelize');
const DataTypes = Sequelize.DataTypes;

module.exports = function (app) {
  const sequelizeClient = app.get('sequelizeClient');
  const notifications = sequelizeClient.define('notifications', {
    notification_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    type: {
      type: DataTypes.ENUM('comment', 'event', 'announcement'),
      allowNull: false
    },
    content: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    myid: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    post_id: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    event_id: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    announcement_id: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    id: {
      type: DataTypes.INTEGER,
      allowNull: true
    }
  }, {
    hooks: {
      beforeCount(options) {
        options.raw = true;
      }
    }
  });

  // eslint-disable-next-line no-unused-vars
  notifications.associate = function (models) {
    // Define associations here
    notifications.hasMany(models.users, {foreignKey: 'id', sourceKey: 'id'});
    notifications.hasMany(models.posts, {foreignKey: 'post_id', sourceKey: 'post_id'});
    notifications.hasMany(models.events, {foreignKey: 'event_id', sourceKey: 'event_id'});
    notifications.hasMany(models.announcements, {foreignKey: 'announcement_id', sourceKey: 'announcement_id'});
    // See http://docs.sequelizejs.com/en/latest/docs/associations/
  };

  return notifications;
};
