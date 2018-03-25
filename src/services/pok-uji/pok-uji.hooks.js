const { authenticate } = require('@feathersjs/authentication').hooks;

const relationshipPokUji = require('../../hooks/relationship-pok-uji');

module.exports = {
  before: {
    all: [ authenticate('jwt') ],
    find: [relationshipPokUji()],
    get: [relationshipPokUji()],
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
