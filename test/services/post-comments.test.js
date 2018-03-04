const assert = require('assert');
const app = require('../../src/app');

describe('\'post-comments\' service', () => {
  it('registered the service', () => {
    const service = app.service('post-comments');

    assert.ok(service, 'Registered the service');
  });
});
