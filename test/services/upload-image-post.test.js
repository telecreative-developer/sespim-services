const assert = require('assert');
const app = require('../../src/app');

describe('\'upload-image-post\' service', () => {
  it('registered the service', () => {
    const service = app.service('upload-image-post');

    assert.ok(service, 'Registered the service');
  });
});
