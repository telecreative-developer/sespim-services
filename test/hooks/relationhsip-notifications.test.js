const assert = require('assert');
const feathers = require('@feathersjs/feathers');
const relationhsipNotifications = require('../../src/hooks/relationhsip-notifications');

describe('\'relationhsip-notifications\' hook', () => {
  let app;

  beforeEach(() => {
    app = feathers();

    app.use('/dummy', {
      async get(id) {
        return { id };
      }
    });

    app.service('dummy').hooks({
      before: relationhsipNotifications()
    });
  });

  it('runs the hook', async () => {
    const result = await app.service('dummy').get('test');
    
    assert.deepEqual(result, { id: 'test' });
  });
});
