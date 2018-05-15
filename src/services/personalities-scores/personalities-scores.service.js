// Initializes the `personalities_scores` service on path `/personalities-scores`
const createService = require('feathers-sequelize');
const createModel = require('../../models/personalities-scores.model');
const hooks = require('./personalities-scores.hooks');
const filters = require('./personalities-scores.filters');

module.exports = function () {
  const app = this;
  const Model = createModel(app);
  const paginate = app.get('paginate');

  const options = {
    name: 'personalities-scores',
    Model,
    paginate
  };

  // Initialize our service with any options it requires
  app.use('/personalities-scores', createService(options));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('personalities-scores');

  service.hooks(hooks);

  if (service.filter) {
    service.filter(filters);
  }
};
