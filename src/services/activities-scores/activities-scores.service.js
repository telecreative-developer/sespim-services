// Initializes the `activities_scores` service on path `/activities-scores`
const createService = require('feathers-sequelize');
const createModel = require('../../models/activities-scores.model');
const hooks = require('./activities-scores.hooks');
const filters = require('./activities-scores.filters');

module.exports = function () {
  const app = this;
  const Model = createModel(app);
  const paginate = app.get('paginate');

  const options = {
    name: 'activities-scores',
    Model,
    paginate
  };

  // Initialize our service with any options it requires
  app.use('/activities-scores', createService(options));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('activities-scores');

  service.hooks(hooks);

  if (service.filter) {
    service.filter(filters);
  }
};
