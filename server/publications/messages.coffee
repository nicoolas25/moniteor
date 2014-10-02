# Publish to the clients every messages
Meteor.publish 'messages', ->
  Message.find()
