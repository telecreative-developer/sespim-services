// Initializes the `kodenaskah` service on path `/kodenaskah`
const createService = require('feathers-sequelize');
const createModel = require('../../models/kodenaskah.model');
const hooks = require('./kodenaskah.hooks');

module.exports = function (app) {
  const Model = createModel(app);
  const paginate = app.get('paginate');

  const options = {
    name: 'kodenaskah',
    Model,
    paginate
  };

  // Initialize our service with any options it requires
  app.use('/kodenaskah', createService(options));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('kodenaskah');

  service.hooks(hooks);
};
