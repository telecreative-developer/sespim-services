const { authenticate } = require('@feathersjs/authentication').hooks;

const relationshipScores = require('../../hooks/relationship-scores');

module.exports = {
  before: {
    all: [ authenticate('jwt') ],
    find: [relationshipScores()],
    get: [relationshipScores()],
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
