// Initializes the `academic-scores` service on path `/academic-scores`
const createService = require('feathers-sequelize');
const createModel = require('../../models/academic-scores.model');
const hooks = require('./academic-scores.hooks');
const filters = require('./academic-scores.filters');

module.exports = function () {
  const app = this;
  const Model = createModel(app);
  const paginate = app.get('paginate');

  const options = {
    name: 'academic-scores',
    Model,
    paginate
  };

  // Initialize our service with any options it requires
  app.use('/academic-scores', createService(options));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('academic-scores');

  service.hooks(hooks);

  if (service.filter) {
    service.filter(filters);
  }
};
