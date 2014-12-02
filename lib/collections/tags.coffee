TagsSchema = new SimpleSchema
  name:
    type: String
    min: 3
    max: 30
    label: "Name"

# making the Tags collection a global variable
root = exports ? this
root.Tags = new Mongo.Collection 'tags'

# permissions
Tags.allow
  insert: -> true