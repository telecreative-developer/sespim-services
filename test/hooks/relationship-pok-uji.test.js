const assert = require('assert');
const feathers = require('@feathersjs/feathers');
const relationshipPokUji = require('../../src/hooks/relationship-pok-uji');

describe('\'relationship-pok-uji\' hook', () => {
  let app;

  beforeEach(() => {
    app = feathers();

    app.use('/dummy', {
      async get(id) {
        return { id };
      }
    });

    app.service('dummy').hooks({
      before: relationshipPokUji()
    });
  });

  it('runs the hook', async () => {
    const result = await app.service('dummy').get('test');
    
    assert.deepEqual(result, { id: 'test' });
  });
});
