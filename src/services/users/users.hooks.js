const { authenticate } = require('@feathersjs/authentication').hooks;

const {
  hashPassword, protect
} = require('@feathersjs/authentication-local').hooks;

module.exports = {
  before: {
    all: [],
    find: [authenticate('jwt'), protect('password')],
    get: [authenticate('jwt'), protect('password')],
    create: [hashPassword()],
    update: [authenticate('jwt'), hashPassword()],
    patch: [authenticate('jwt'), hashPassword()],
    remove: [authenticate('jwt')]
  },

  after: {
    all: [protect('password')],
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
