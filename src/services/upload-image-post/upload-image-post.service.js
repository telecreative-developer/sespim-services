// Initializes the `upload-image-post` service on path `/upload-image-post`
const hooks = require('./upload-image-post.hooks');
const blobService = require('feathers-blob');
const fs = require('fs-blob-store');
const blobStorage = fs('./public/files/posts/images');

module.exports = function (app) {

  // Initialize our service with any options it requires
  app.use('/upload-image-post', blobService({Model: blobStorage}));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('upload-image-post');

  service.hooks(hooks);
};
