const assert = require('assert');
const feathers = require('@feathersjs/feathers');
const relationshipThumbnail = require('../../src/hooks/relationship-thumbnail');

describe('\'relationship-thumbnail\' hook', () => {
  let app;

  beforeEach(() => {
    app = feathers();

    app.use('/dummy', {
      async get(id) {
        return { id };
      }
    });

    app.service('dummy').hooks({
      before: relationshipThumbnail()
    });
  });

  it('runs the hook', async () => {
    const result = await app.service('dummy').get('test');
    
    assert.deepEqual(result, { id: 'test' });
  });
});
