const assert = require('assert');
const app = require('../../src/app');

describe('\'string-notifications\' service', () => {
  it('registered the service', () => {
    const service = app.service('string-notifications');

    assert.ok(service, 'Registered the service');
  });
});
