const { authenticate } = require('@feathersjs/authentication').hooks;

const relationshipPostComments = require('../../hooks/relationship-post-comments');

module.exports = {
  before: {
    all: [ authenticate('jwt') ],
    find: [relationshipPostComments()],
    get: [relationshipPostComments()],
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
