const assert = require('assert');
const app = require('../../src/app');

describe('\'activities_scores\' service', () => {
  it('registered the service', () => {
    const service = app.service('activities-scores');

    assert.ok(service, 'Registered the service');
  });
});
