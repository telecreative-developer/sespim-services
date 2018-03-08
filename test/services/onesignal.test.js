const assert = require('assert');
const app = require('../../src/app');

describe('\'onesignal\' service', () => {
  it('registered the service', () => {
    const service = app.service('onesignal');

    assert.ok(service, 'Registered the service');
  });
});
