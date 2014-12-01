Meteor.publish 'tags', ->
  Tags.find()

Meteor.publish 'singleTag', (id) ->
  check(id, String)
  Tags.find(id)