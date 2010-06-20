class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :chat
  
  attr_accessible :body, :system, :chat_id, :user_id
end
