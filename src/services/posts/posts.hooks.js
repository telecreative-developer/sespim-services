const { authenticate } = require('@feathersjs/authentication').hooks;

const relationshipPosts = require('../../hooks/relationship-posts');

module.exports = {
  before: {
    all: [ authenticate('jwt') ],
    find: [relationshipPosts()],
    get: [relationshipPosts()],
    create: [],
    update: [],
    patch: [],
    remove: []
  },

  after: {
    all: [],
    find: [],
    get: [],
    create: [],
    update: [],
    patch: [],
    remove: []
  },

  error: {
    all: [],
    find: [],
    get: [],
    create: [],
    update: [],
    patch: [],
    remove: []
  }
};
