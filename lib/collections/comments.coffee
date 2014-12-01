CommentsSchema = new SimpleSchema
  title:
    type: String
    min: 3
    max: 100
    optional: true
    label: "Title"

# making the Posts collection a global variable
root = exports ? this
root.Comments = new Mongo.Collection 'comments'