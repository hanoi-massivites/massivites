# allowing a global variable as root.
root = exports ? this

root.HomeController = RouteController.extend(
  template: "postsList"
  waitOn: -> [
    Meteor.subscribe 'posts'
    Meteor.subscribe 'tags'
  ]
)

root.HomeController.helpers
  posts: ->
    Posts.find()
  tags: ->
    Tags.find()

