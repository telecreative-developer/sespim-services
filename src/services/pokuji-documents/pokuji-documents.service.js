// Initializes the `pokuji-documents` service on path `/pokuji-documents`
const createService = require('feathers-sequelize');
const createModel = require('../../models/pokuji-documents.model');
const hooks = require('./pokuji-documents.hooks');

module.exports = function (app) {
  const Model = createModel(app);
  const paginate = app.get('paginate');

  const options = {
    name: 'pokuji-documents',
    Model,
    paginate
  };

  // Initialize our service with any options it requires
  app.use('/pokuji-documents', createService(options));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('pokuji-documents');

  service.hooks(hooks);
};
