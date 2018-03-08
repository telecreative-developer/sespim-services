const { authenticate } = require('@feathersjs/authentication').hooks;

const relationhsipNotifications = require('../../hooks/relationhsip-notifications');

module.exports = {
  before: {
    all: [ authenticate('jwt') ],
    find: [relationhsipNotifications()],
    get: [relationhsipNotifications()],
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
