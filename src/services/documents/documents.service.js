// Initializes the `documents` service on path `/documents`
const createService = require('feathers-sequelize');
const createModel = require('../../models/documents.model');
const hooks = require('./documents.hooks');

module.exports = function (app) {
  const Model = createModel(app);
  const paginate = app.get('paginate');

  const options = {
    name: 'documents',
    Model,
    paginate
  };

  // Initialize our service with any options it requires
  app.use('/documents', createService(options));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('documents');

  service.hooks(hooks);
};
