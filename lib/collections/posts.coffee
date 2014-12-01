# making the Posts collection a global variable
root = exports ? this
root.Posts = new Mongo.Collection 'posts'
