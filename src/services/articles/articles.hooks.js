const { authenticate } = require('@feathersjs/authentication').hooks;

const relationshipArticles = require('../../hooks/relationship-articles');

module.exports = {
  before: {
    all: [ authenticate('jwt') ],
    find: [relationshipArticles()],
    get: [relationshipArticles()],
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
