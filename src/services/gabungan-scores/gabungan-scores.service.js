// Initializes the `gabungan_scores` service on path `/gabungan-scores`
const createService = require('feathers-sequelize');
const createModel = require('../../models/gabungan-scores.model');
const hooks = require('./gabungan-scores.hooks');
const filters = require('./gabungan-scores.filters');

module.exports = function () {
  const app = this;
  const Model = createModel(app);
  const paginate = app.get('paginate');

  const options = {
    name: 'gabungan-scores',
    Model,
    paginate
  };

  // Initialize our service with any options it requires
  app.use('/gabungan-scores', createService(options));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('gabungan-scores');

  service.hooks(hooks);

  if (service.filter) {
    service.filter(filters);
  }
};
