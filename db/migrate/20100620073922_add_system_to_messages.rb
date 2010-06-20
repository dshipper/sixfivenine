class AddSystemToMessages < ActiveRecord::Migration
  def self.up
    add_column :messages, :system, :boolean, :default => "false"
  end

  def self.down
    remove_column :messages, :system
  end
end
