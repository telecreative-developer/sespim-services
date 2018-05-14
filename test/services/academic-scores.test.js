const assert = require('assert');
const app = require('../../src/app');

describe('\'academic-scores\' service', () => {
  it('registered the service', () => {
    const service = app.service('academic-scores');

    assert.ok(service, 'Registered the service');
  });
});
