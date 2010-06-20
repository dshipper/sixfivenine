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

  def initiate_chat
    #first look for chats
    #@chats = Chats.find :all, :conditions => {:waiting => 1} 
    @chat = nil
    @chat = Chat.find_by_waiting true
    if @chat != nil
      @chat.waiting = false
      @chat.save
      current_user.chat_id = @chat.id
    else 
      #then we have to create a new chat
      @chat = Chat.new
      @chat.waiting = true 
      @chat.save
      current_user.chat_id = @chat.id
    end
  end
  
end
