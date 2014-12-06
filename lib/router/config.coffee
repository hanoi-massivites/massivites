Router.configure
  layoutTemplate: "basicLayout"
  loadingTemplate: "loading"
  notFoundTemplate: "notFound"

# show 404 when user navigate to an invalid post url
Router.onBeforeAction "dataNotFound",
  only: ["postPage"]