const assert = require('assert');
const app = require('../../src/app');

describe('\'kode-naskah\' service', () => {
  it('registered the service', () => {
    const service = app.service('kode-naskah');

    assert.ok(service, 'Registered the service');
  });
});
