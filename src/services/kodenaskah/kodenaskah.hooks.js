const { authenticate } = require('@feathersjs/authentication').hooks;

const relationshipKodenaskah = require('../../hooks/relationship-kodenaskah');

module.exports = {
  before: {
    all: [ authenticate('jwt') ],
    find: [relationshipKodenaskah()],
    get: [relationshipKodenaskah()],
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
