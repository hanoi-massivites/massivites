Meteor.publish 'posts', ->
  Posts.find()

Meteor.publish 'singlePost', (id) ->
  check(id, String)
  Posts.find(id)