// Initializes the `health_scores` service on path `/health-scores`
const createService = require('feathers-sequelize');
const createModel = require('../../models/health-scores.model');
const hooks = require('./health-scores.hooks');
const filters = require('./health-scores.filters');

module.exports = function () {
  const app = this;
  const Model = createModel(app);
  const paginate = app.get('paginate');

  const options = {
    name: 'health-scores',
    Model,
    paginate
  };

  // Initialize our service with any options it requires
  app.use('/health-scores', createService(options));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('health-scores');

  service.hooks(hooks);

  if (service.filter) {
    service.filter(filters);
  }
};
