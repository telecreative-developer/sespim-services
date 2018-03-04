const users = require('./users/users.service.js');
const events = require('./events/events.service.js');
const articles = require('./articles/articles.service.js');
const posts = require('./posts/posts.service.js');
const postComments = require('./post-comments/post-comments.service.js');
const scores = require('./scores/scores.service.js');
const admin = require('./admin/admin.service.js');
// eslint-disable-next-line no-unused-vars
module.exports = function (app) {
  app.configure(users);
  app.configure(events);
  app.configure(articles);
  app.configure(posts);
  app.configure(postComments);
  app.configure(scores);
  app.configure(admin);
};
