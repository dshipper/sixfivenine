class AddForeignToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :chat_id, :integer
  end

  def self.down
    remove_column :users, :chat_id, :limit => 100, :default => '', :null => true
  end
end
