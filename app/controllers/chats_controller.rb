class ChatsController < ApplicationController
  # POST /chats
  # POST /chats.xml
  def create
    @chat = Chat.new(params[:chat])
  end

  # PUT /chats/1
  # PUT /chats/1.xml
  def update
    @chat = Chat.find(params[:id])
    @chat.waiting = 0
  end

  def find
  
  end
  
end
