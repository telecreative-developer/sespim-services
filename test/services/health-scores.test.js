const assert = require('assert');
const app = require('../../src/app');

describe('\'health_scores\' service', () => {
  it('registered the service', () => {
    const service = app.service('health-scores');

    assert.ok(service, 'Registered the service');
  });
});
