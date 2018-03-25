const assert = require('assert');
const app = require('../../src/app');

describe('\'pok-uji\' service', () => {
  it('registered the service', () => {
    const service = app.service('pok-uji');

    assert.ok(service, 'Registered the service');
  });
});
