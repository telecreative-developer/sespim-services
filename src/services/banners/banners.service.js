// Initializes the `banners` service on path `/banners`
const createService = require('feathers-sequelize');
const createModel = require('../../models/banners.model');
const hooks = require('./banners.hooks');

module.exports = function (app) {
  const Model = createModel(app);
  const paginate = app.get('paginate');

  const options = {
    name: 'banners',
    Model,
    paginate
  };

  // Initialize our service with any options it requires
  app.use('/banners', createService(options));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('banners');

  service.hooks(hooks);
};
