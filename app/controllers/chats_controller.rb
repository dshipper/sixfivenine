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
    @chatting_with = nil
    @chat = Chat.find_by_waiting true
    if @chat != nil
      @chat.waiting = false
      @chat.user_two = current_user.id
      @chat.save
      @chatting_with = @chat.user_one
      current_user.chat_id = @chat.id
      m = Message.new :body => "#{current_user.first_name} has joined the chat.", :user_id => current_user.id, :chat_id => current_user.chat_id, :system => true
      m.save
    else 
      #then we have to create a new chat
      @chat = Chat.new
      @chat.waiting = true 
      @chat.user_one = current_user.id
      @chat.save
      current_user.chat_id = @chat.id
      m = Message.new :body => "#{current_user.first_name} has joined the chat.", :user_id => current_user.id, :chat_id => current_user.chat_id, :system => true
      m.save
    end
  end
  
  def get
    if @last_message
      @messages = Message.find(:all, :conditions => {:chat_id => params[:id], :id_gt => @last_message })
    else
      @messages = Message.find(:all, :conditions => {:chat_id => params[:id]})
    end
  end
  
end
