// Initializes the `onesignal` service on path `/onesignal`
const createService = require('feathers-sequelize');
const createModel = require('../../models/onesignal.model');
const hooks = require('./onesignal.hooks');

module.exports = function (app) {
  const Model = createModel(app);
  const paginate = app.get('paginate');

  const options = {
    name: 'onesignal',
    Model,
    paginate
  };

  // Initialize our service with any options it requires
  app.use('/onesignal', createService(options));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('onesignal');

  service.hooks(hooks);
};
