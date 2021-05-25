App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  #For real time messaging if it puts into DB, but does not show up check this
  received: (data) ->
    $('#message-container').append data.mod_message
    scroll_bottom()