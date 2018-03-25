const { authenticate } = require('@feathersjs/authentication').hooks;

const relationshipThumbnail = require('../../hooks/relationship-thumbnail');

module.exports = {
  before: {
    all: [ authenticate('jwt') ],
    find: [relationshipThumbnail()],
    get: [relationshipThumbnail()],
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
