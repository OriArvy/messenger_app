class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    #for real time messaging
    stream_from "chatroom_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
