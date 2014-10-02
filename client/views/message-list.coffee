Session.set("counter", 0)

Template.messageList.helpers
  counter: ->
    Session.get("counter")

Template.messageList.events
  'click button': ->
    Session.set("counter", Session.get("counter") + 1)
