Template.postItem.helpers
  tags: ->
    Tags.find
      _id:
        $in: @tags