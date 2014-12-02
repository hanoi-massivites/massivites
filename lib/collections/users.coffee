UsersSchema = new SimpleSchema
  _id:
    type: String,
    optional: true

  firstName:
    type: String
    min: 0
    max: 30
    label: "First Name"

  lastName:
    type: String
    min: 0
    max: 30
    label: "Last Name"

  username:
    type: String
    regEx: /^[a-z0-9A-Z_]{3,15}$/

  emails:
    type: [Object]

  "emails.$.address":
    type: String
    regEx: SimpleSchema.RegEx.Email

  "emails.$.verified":
    type: Boolean

  profile:
    type: [Object]

  "profile.images":
    type: String
    optional: true
    label: "Your profile picture"

  "profile.description":
    type: String
    optional: true
    label: "Your description"
    max: 1000

  createdAt:
    type: Date
    denyUpdate: true
    optional: true
    autoValue: ->
      if this.isInsert
        new Date()
    autoform:
      omit: true
