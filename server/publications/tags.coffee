Meteor.publish 'tags', ->
  Tags.find()

Meteor.publish 'postTag', (id) ->
  # check(id, String)
  Tags.find({_id: id})