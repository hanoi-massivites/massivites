# allowing a global variable as root.
root = exports ? this

CommentsSchema = new SimpleSchema
  title:
    type: String
    min: 3
    max: 100
    optional: true
    label: "Title"

root.Comments = new Mongo.Collection 'comments'