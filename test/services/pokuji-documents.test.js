const assert = require('assert');
const app = require('../../src/app');

describe('\'pokuji-documents\' service', () => {
  it('registered the service', () => {
    const service = app.service('pokuji-documents');

    assert.ok(service, 'Registered the service');
  });
});
