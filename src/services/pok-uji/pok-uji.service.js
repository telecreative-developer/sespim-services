// Initializes the `pok-uji` service on path `/pok-uji`
const createService = require('feathers-sequelize');
const createModel = require('../../models/pok-uji.model');
const hooks = require('./pok-uji.hooks');

module.exports = function (app) {
  const Model = createModel(app);
  const paginate = app.get('paginate');

  const options = {
    name: 'pok-uji',
    Model,
    paginate
  };

  // Initialize our service with any options it requires
  app.use('/pok-uji', createService(options));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('pok-uji');

  service.hooks(hooks);
};
