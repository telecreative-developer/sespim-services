// See http://docs.sequelizejs.com/en/latest/docs/models-definition/
// for more of what you can do here.
const Sequelize = require('sequelize');
const DataTypes = Sequelize.DataTypes;

module.exports = function (app) {
  const sequelizeClient = app.get('sequelizeClient');
  const documents = sequelizeClient.define('documents', {
    document_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    document_title: {
      type: DataTypes.STRING,
      allowNull: true
    },
    document_url: {
      type: DataTypes.STRING,
      allowNull: true
    },
    document_type: {
      type: DataTypes.ENUM('standar-kompetensi', 'data-serdik', 'handbook'),
      allowNull: true
    },
    admin_id: {
      type: DataTypes.STRING,
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
  documents.associate = function (models) {
    // Define associations here
    // See http://docs.sequelizejs.com/en/latest/docs/associations/
  };

  return documents;
};
