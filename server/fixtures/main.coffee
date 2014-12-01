Meteor.startup ->

  if Tags.find().count() is 0 or Posts.find().count() is 0
    # First reset all collection in db
    Tags.remove()
    Posts.remove()

    # Insert 10 tags
    tags = ("Tag #{n}" for n in [1..10] by 1)
    tagIds = (Tags.insert name: tag for tag in tags)

    tags = ("Tag #{n}" for n in [1..10] by 1)

    # Insert 20 posts
    for n in [1..20] by 1
      post = 
        title: "A fancy title: #{n}"
        description: "#{n} - Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum."
        tags: [tagIds[Math.floor((Math.random() * 10))]]
      postId = Posts.insert post

    
  # if Posts.find().count() is 0
  #   now = new Date().getTime()
  #   now = new Date().getTime()

  # for n in [0..15]