// Initializes the `announcements` service on path `/announcements`
const createService = require('feathers-sequelize');
const createModel = require('../../models/announcements.model');
const hooks = require('./announcements.hooks');

module.exports = function (app) {
  const Model = createModel(app);
  const paginate = app.get('paginate');

  const options = {
    name: 'announcements',
    Model,
    paginate
  };

  // Initialize our service with any options it requires
  app.use('/announcements', createService(options));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('announcements');

  service.hooks(hooks);
};
