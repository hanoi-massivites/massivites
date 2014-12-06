# allowing a global variable as root.
root = exports ? this

TagsSchema = new SimpleSchema
  name:
    type: String
    min: 3
    max: 30
    label: "Name"

root.Tags = new Mongo.Collection 'tags'

# permissions
Tags.allow
  insert: -> true