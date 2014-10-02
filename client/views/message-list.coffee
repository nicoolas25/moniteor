Template.messageList.helpers
  messages: ->
    Message.find {},
      sort:
        createdAt: -1
      limit: 20


Template.messageList.events
  'click button': (event, template) ->
    Message.insert
      author: template.$('input[name=author]').val()
      content: template.$('input[name=content]').val()
      createdAt: new Date()
