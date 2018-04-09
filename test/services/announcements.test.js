const assert = require('assert');
const app = require('../../src/app');

describe('\'announcements\' service', () => {
  it('registered the service', () => {
    const service = app.service('announcements');

    assert.ok(service, 'Registered the service');
  });
});
