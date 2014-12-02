Router.route '/',
  name: 'postPage.show'
  template: 'postsList'
  waitOn: ->
   [Meteor.subscribe 'posts', this.params._id
    Meteor.subscribe 'tags', this.params._id]
    # console.log(this.params._id)
  data: ->
    Posts.findOne({_id: this.params.id})


