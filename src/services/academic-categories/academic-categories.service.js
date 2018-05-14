// Initializes the `academic-categories` service on path `/academic-categories`
const createService = require('feathers-sequelize');
const createModel = require('../../models/academic-categories.model');
const hooks = require('./academic-categories.hooks');
const filters = require('./academic-categories.filters');

module.exports = function () {
  const app = this;
  const Model = createModel(app);
  const paginate = app.get('paginate');

  const options = {
    name: 'academic-categories',
    Model,
    paginate
  };

  // Initialize our service with any options it requires
  app.use('/academic-categories', createService(options));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('academic-categories');

  service.hooks(hooks);

  if (service.filter) {
    service.filter(filters);
  }
};
