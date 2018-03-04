// Initializes the `articles` service on path `/articles`
const createService = require('feathers-sequelize');
const createModel = require('../../models/articles.model');
const hooks = require('./articles.hooks');

module.exports = function (app) {
  const Model = createModel(app);
  const paginate = app.get('paginate');

  const options = {
    id: 'article_id',
    name: 'articles',
    Model,
    paginate
  };

  // Initialize our service with any options it requires
  app.use('/articles', createService(options));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('articles');

  service.hooks(hooks);
};
