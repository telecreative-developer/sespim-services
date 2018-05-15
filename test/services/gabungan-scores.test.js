const assert = require('assert');
const app = require('../../src/app');

describe('\'gabungan_scores\' service', () => {
  it('registered the service', () => {
    const service = app.service('gabungan-scores');

    assert.ok(service, 'Registered the service');
  });
});
