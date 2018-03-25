// Initializes the `thumbnails` service on path `/thumbnails`
const createService = require('feathers-sequelize');
const createModel = require('../../models/thumbnails.model');
const hooks = require('./thumbnails.hooks');

module.exports = function (app) {
  const Model = createModel(app);
  const paginate = app.get('paginate');

  const options = {
    name: 'thumbnails',
    Model,
    paginate
  };

  // Initialize our service with any options it requires
  app.use('/thumbnails', createService(options));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('thumbnails');

  service.hooks(hooks);
};
