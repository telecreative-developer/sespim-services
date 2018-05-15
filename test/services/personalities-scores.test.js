const assert = require('assert');
const app = require('../../src/app');

describe('\'personalities_scores\' service', () => {
  it('registered the service', () => {
    const service = app.service('personalities-scores');

    assert.ok(service, 'Registered the service');
  });
});
