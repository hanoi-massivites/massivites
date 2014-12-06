Meteor.publish 'posts', ->
  Posts.find()

# Meteor.publish 'singlePost', (id) ->
#   check(id, String)
#   Posts.find(id)

Meteor.publish "post", (id) ->
  Posts.find({_id: id})