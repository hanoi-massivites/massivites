PostsSchema = new SimpleSchema
  title:
    type: String
    min: 3
    max: 100
    optional: true
    label: "Title"

  description:
    type: String
    min: 10
    max: 1000
    label: "Description"

  tags:
    type: [String]
    minCount: 1
    maxCount: 5
    regEx: SimpleSchema.RegEx.Id
    label: "Tags"

  images:
    type: [String]
    optional: true
    label: "Images"

  uPvotes:
    type: Number
    defaultValue: 0
    Label: "Upvotes"
    autoform:
      omit: true

  upVoters:
    type: [String]
    regEx: SimpleSchema.RegEx.Id
    optional: true

  createdAt:
    type: Date
    denyUpdate: true
    optional: true
    autoValue: ->
      if this.isInsert
        new Date()
    autoform:
      omit: true

# making the Posts collection a global variable
root = exports ? this
root.Posts = new Mongo.Collection 'posts'