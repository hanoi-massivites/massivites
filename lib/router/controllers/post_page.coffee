# allowing a global variable as root.
root = exports ? this

root.PostPageController = RouteController.extend(
  template: "postItem"
  waitOn: -> [
    Meteor.subscribe("post", @params._id)
    Meteor.subscribe("postTag", @params._id)
  ]
  data: ->
    Posts.findOne({_id: @params._id})
    # Tags.findOne({_id: @params._id})
)

# root.PostPageController.helpers
#   posts: ->
#     Posts.find({_id: @params._id})