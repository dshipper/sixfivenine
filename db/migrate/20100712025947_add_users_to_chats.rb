class AddUsersToChats < ActiveRecord::Migration
  def self.up
    add_column :chats, :user_one, :integer
    add_column :chats, :user_two, :integer
  end

  def self.down
    remove_column :chats, :user_one
    remove_column :chats, :user_two
  end
end
