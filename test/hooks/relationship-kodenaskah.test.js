const assert = require('assert');
const feathers = require('@feathersjs/feathers');
const relationshipKodenaskah = require('../../src/hooks/relationship-kodenaskah');

describe('\'relationship-kodenaskah\' hook', () => {
  let app;

  beforeEach(() => {
    app = feathers();

    app.use('/dummy', {
      async get(id) {
        return { id };
      }
    });

    app.service('dummy').hooks({
      before: relationshipKodenaskah()
    });
  });

  it('runs the hook', async () => {
    const result = await app.service('dummy').get('test');
    
    assert.deepEqual(result, { id: 'test' });
  });
});
