// Initializes the `post-comments` service on path `/post-comments`
const createService = require('feathers-sequelize');
const createModel = require('../../models/post-comments.model');
const hooks = require('./post-comments.hooks');

module.exports = function (app) {
  const Model = createModel(app);
  const paginate = app.get('paginate');

  const options = {
    id: 'post_comment_id',
    name: 'post-comments',
    Model,
    paginate
  };

  // Initialize our service with any options it requires
  app.use('/post-comments', createService(options));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('post-comments');

  service.hooks(hooks);
};
