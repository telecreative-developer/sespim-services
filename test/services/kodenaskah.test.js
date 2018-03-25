const assert = require('assert');
const app = require('../../src/app');

describe('\'kodenaskah\' service', () => {
  it('registered the service', () => {
    const service = app.service('kodenaskah');

    assert.ok(service, 'Registered the service');
  });
});
