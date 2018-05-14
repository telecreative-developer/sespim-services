const assert = require('assert');
const app = require('../../src/app');

describe('\'academic-categories\' service', () => {
  it('registered the service', () => {
    const service = app.service('academic-categories');

    assert.ok(service, 'Registered the service');
  });
});
