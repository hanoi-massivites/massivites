Router.route '/',
  name: 'postPage.show'
  template: 'postsList'
  waitOn: -> [
    Meteor.subscribe 'posts'
    Meteor.subscribe 'tags'
  ]


